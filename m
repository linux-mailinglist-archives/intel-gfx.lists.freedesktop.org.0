Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMswGOMvuWn4uAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 11:41:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0788A2A821B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 11:41:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7956910E4F0;
	Tue, 17 Mar 2026 10:41:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M0vmte74";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD6610E1ED;
 Tue, 17 Mar 2026 10:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773744095; x=1805280095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DTuuBnu66DQgG0PSV3Kes9x0y2tUqpjBMYga/FLUkeM=;
 b=M0vmte74mFTfjVC68IaGKuwQH1orfLLU9AMK5GWHBaQSYl9HZ0SdugTd
 wdsXm4X/+2JiV2QAO8Dw5JZ9U1i8GfZwgYkNpu8VXt/WHtz4bjIg8J7eG
 33nJorL5O6EKDdzv9yNQany/hUO5QP2iFfiQ03XcDbkDeEUo0FaiqmnyO
 gRrvUYRbws/ay+otHDMEBYji4RlumZpxICNAGBqf6uEd2sbI4Et5VDs5D
 6bUkFpzSzU3VWpxeVezeLye/su1Hd+jvbzp72tkCS2iVl81MiBwbfLGVy
 MjW9LH2GlgiBOKwmFhBfu2venqaGazFOjLb+fBzRdBu2SPYKiDCSojwvF Q==;
X-CSE-ConnectionGUID: gG8Svk+WSx2MsI6wr9nAeg==
X-CSE-MsgGUID: CruL7S0QRF2OEuEEHOIqvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="77381975"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="77381975"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 03:41:35 -0700
X-CSE-ConnectionGUID: 0BebId1dS7eCWfRWDddlnw==
X-CSE-MsgGUID: /N2gnmKbRCWIGQOCVNvQTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221455818"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.118])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 03:41:34 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH 1/4] drm/i915/display: move clock-gating init for IBX to
 display
Date: Tue, 17 Mar 2026 12:40:48 +0200
Message-ID: <20260317104119.1690065-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260317104119.1690065-1-luciano.coelho@intel.com>
References: <20260317104119.1690065-1-luciano.coelho@intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0788A2A821B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new function in the display code to help initialize clock-gating
without reading display PCH registers directly from non-display code.

This adds a mini-framework to deal with display-specific PCH registers
and uses it for IBX as a start.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch.c  | 24 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pch.h  |  1 +
 drivers/gpu/drm/i915/intel_clock_gating.c | 13 ++----------
 3 files changed, 27 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index 65359a36df48..65812b720bda 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -5,6 +5,8 @@
 
 #include <drm/drm_print.h>
 
+#include "intel_de.h"
+#include "intel_display_regs.h"
 #include "intel_display_core.h"
 #include "intel_display_utils.h"
 #include "intel_pch.h"
@@ -214,6 +216,28 @@ intel_pch_type(const struct intel_display *display, unsigned short id)
 	}
 }
 
+static void intel_pch_ibx_init_clock_gating(struct intel_display *display)
+{
+	/*
+	 * On Ibex Peak and Cougar Point, we need to disable clock
+	 * gating for the panel power sequencer or it will fail to
+	 * start up when no ports are active.
+	 */
+	intel_de_write(display, SOUTH_DSPCLK_GATE_D,
+		       PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
+}
+
+void intel_pch_init_clock_gating(struct intel_display *display)
+{
+	switch (INTEL_PCH_TYPE(display)) {
+	case PCH_IBX:
+		intel_pch_ibx_init_clock_gating(display);
+		break;
+	default:
+		break;
+	}
+}
+
 static bool intel_is_virt_pch(unsigned short id,
 			      unsigned short svendor, unsigned short sdevice)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pch.h b/drivers/gpu/drm/i915/display/intel_pch.h
index 19cac7412d0a..aa971fa141e7 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.h
+++ b/drivers/gpu/drm/i915/display/intel_pch.h
@@ -52,5 +52,6 @@ enum intel_pch {
 #define HAS_PCH_SPLIT(display)			(INTEL_PCH_TYPE(display) != PCH_NONE)
 
 void intel_pch_detect(struct intel_display *display);
+void intel_pch_init_clock_gating(struct intel_display *display);
 
 #endif /* __INTEL_PCH__ */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 68a6f94f2a37..c0382607224d 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -33,6 +33,7 @@
 #include "display/intel_display.h"
 #include "display/intel_display_core.h"
 #include "display/intel_display_regs.h"
+#include "display/intel_pch.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_mcr.h"
@@ -124,16 +125,6 @@ static void glk_init_clock_gating(struct drm_i915_private *i915)
 			   PWM1_GATING_DIS | PWM2_GATING_DIS);
 }
 
-static void ibx_init_clock_gating(struct drm_i915_private *i915)
-{
-	/*
-	 * On Ibex Peak and Cougar Point, we need to disable clock
-	 * gating for the panel power sequencer or it will fail to
-	 * start up when no ports are active.
-	 */
-	intel_uncore_write(&i915->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
-}
-
 static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
 {
 	struct intel_display *display = dev_priv->display;
@@ -202,7 +193,7 @@ static void ilk_init_clock_gating(struct drm_i915_private *i915)
 
 	g4x_disable_trickle_feed(i915);
 
-	ibx_init_clock_gating(i915);
+	intel_pch_init_clock_gating(i915->display);
 }
 
 static void cpt_init_clock_gating(struct drm_i915_private *i915)
-- 
2.51.0

