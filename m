Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EVzXFMVS32l1RwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 10:56:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD05402356
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 10:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4B810E6A7;
	Wed, 15 Apr 2026 08:56:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ArhDQINf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2723410E6A7;
 Wed, 15 Apr 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776243393; x=1807779393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TxbrPl00qxSY6sCQ+KdawoyN1I6jp7Sk1UbUdXVMis4=;
 b=ArhDQINf1BIDOQbrppHrRzlzKZZyKUe7wQdr4B6N8Wczr7Z49azJjCPV
 T0Z2mZv7bJW7b53J9yF2qMCNDFGSgiohiS+2LJr5sxhztS0aL4lhb4SrC
 MdWxizolWSyouzQR86lVKMqnBahsLad+1VtjI2j3D0HW80m0BD5913h1J
 nKCVuehfI7K0MylJu9vfjNP/nlytfgqrDMs3T/JDZX44kAhEx4M3PSUr5
 pA4yck+G7Yyxrr4fSGl94cMV3u9QqB/KfbzFQxckiw5zPLsT3jIj29SUl
 0XvB6XE1JP+5jGAV7Y8cBUO4ZX6YEE9FVWBG2O24SYhqNDJ8+xsprym6e Q==;
X-CSE-ConnectionGUID: X0KECIaNTDOF2P5YPZw82A==
X-CSE-MsgGUID: Ec8jD36yQ/CXnv9SmnTOiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="87916731"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="87916731"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 01:56:33 -0700
X-CSE-ConnectionGUID: TXAbRi3tSGuiVOeb+hlfiA==
X-CSE-MsgGUID: J2yOcCE0Rm+oq7nxhd7hGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="223860901"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 01:56:31 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 1/5] drm/i915/reset: Reorganize display reset code
Date: Wed, 15 Apr 2026 11:56:27 +0300
Message-ID: <20260415085627.7907-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260414142247.651-2-ville.syrjala@linux.intel.com>
References: <20260414142247.651-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9DD05402356
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop returning the "is there a display?" status from
intel_display_reset_prepare(). I plan to move the pending_fb_pin
into the i915 code, so I need to make that determination already
before intel_display_reset_prepare() is called. Add a new
intel_display_reset_supported() function for that.

v2: Also check display!=NULL for mock tests

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_reset.c    | 23 ++++++++-----------
 .../drm/i915/display/intel_display_reset.h    |  3 ++-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 13 +++++++----
 3 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index d00ef5bdcbda..fc661c623cb8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -16,22 +16,24 @@
 #include "intel_hotplug.h"
 #include "intel_pps.h"
 
+bool intel_display_reset_supported(struct intel_display *display)
+{
+	return display && HAS_DISPLAY(display);
+}
+
 bool intel_display_reset_test(struct intel_display *display)
 {
-	return display->params.force_reset_modeset_test;
+	return display && HAS_DISPLAY(display) &&
+		display->params.force_reset_modeset_test;
 }
 
-/* returns true if intel_display_reset_finish() needs to be called */
-bool intel_display_reset_prepare(struct intel_display *display,
+void intel_display_reset_prepare(struct intel_display *display,
 				 modeset_stuck_fn modeset_stuck, void *context)
 {
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(display))
-		return false;
-
 	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
@@ -60,7 +62,7 @@ bool intel_display_reset_prepare(struct intel_display *display,
 		ret = PTR_ERR(state);
 		drm_err(display->drm, "Duplicating state failed with %i\n",
 			ret);
-		return true;
+		return;
 	}
 
 	ret = drm_atomic_helper_disable_all(display->drm, ctx);
@@ -68,13 +70,11 @@ bool intel_display_reset_prepare(struct intel_display *display,
 		drm_err(display->drm, "Suspending crtc's failed with %i\n",
 			ret);
 		drm_atomic_state_put(state);
-		return true;
+		return;
 	}
 
 	display->restore.modeset_state = state;
 	state->acquire_ctx = ctx;
-
-	return true;
 }
 
 void intel_display_reset_finish(struct intel_display *display, bool test_only)
@@ -83,9 +83,6 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(display))
-		return;
-
 	state = fetch_and_zero(&display->restore.modeset_state);
 	if (!state)
 		goto unlock;
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index 8b3bda134454..e0f15e757728 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -12,8 +12,9 @@ struct intel_display;
 
 typedef void modeset_stuck_fn(void *context);
 
+bool intel_display_reset_supported(struct intel_display *display);
 bool intel_display_reset_test(struct intel_display *display);
-bool intel_display_reset_prepare(struct intel_display *display,
+void intel_display_reset_prepare(struct intel_display *display,
 				 modeset_stuck_fn modeset_stuck, void *context);
 void intel_display_reset_finish(struct intel_display *display, bool test_only);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 37272871b0f2..ffd11767874f 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1425,16 +1425,19 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 		bool need_display_reset;
 		bool reset_display;
 
-		need_display_reset = intel_gt_gpu_reset_clobbers_display(gt) &&
+		need_display_reset =
+			intel_display_reset_supported(display) &&
+			intel_gt_gpu_reset_clobbers_display(gt) &&
 			intel_has_gpu_reset(gt);
 
-		reset_display = intel_display_reset_test(display) ||
+		reset_display =
+			intel_display_reset_test(display) ||
 			need_display_reset;
 
 		if (reset_display)
-			reset_display = intel_display_reset_prepare(display,
-								    display_reset_modeset_stuck,
-								    gt);
+			intel_display_reset_prepare(display,
+						    display_reset_modeset_stuck,
+						    gt);
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-- 
2.52.0

