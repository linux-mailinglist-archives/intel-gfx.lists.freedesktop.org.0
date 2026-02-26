Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMCjK3YboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:07:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 443BE1A3F9E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C876910E8AA;
	Thu, 26 Feb 2026 10:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XZX64Jtr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF6610E8A9;
 Thu, 26 Feb 2026 10:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100468; x=1803636468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KnBfn7jQO5aa2SUqLjwJfdUrtwRZTtZaXB4MwDB1RUk=;
 b=XZX64JtrJlacEW7vX1taE3KeMy4KakPvU5r0xiSxc7vok6dEY+KTlU8E
 QLN5PHssp1MEm91bqBaBqeJ3GT13s+b7phftu+LTTVP5eF7mbMkyIiuWG
 FjRQFXc0mIkVjYYMtpk7nLZj8dtH8NdGPXKGqjO5wrGhM9oIkW7JNqJD6
 qYsniM8RF9U9ONqB5vqs5qkg2cXvD76eSo4x5d/FW695dPNS7geaVUAgX
 T4tuyryekTeKtvjFxkgA3n4DHZ643TqV4DQznM7Tuc5BHnRTaH/xI3udo
 xiXPLds7TjlIG8j3fAXlxTMiO0L3kDmJN3YpSXAiKITpMAZGG9MIXXgF8 A==;
X-CSE-ConnectionGUID: k8DGs+T3S1q6nrNb6HL7+Q==
X-CSE-MsgGUID: sseXVB4NSeqK9USbWCFytg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83866859"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="83866859"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:07:48 -0800
X-CSE-ConnectionGUID: u75Qo6b+T/C3aB1ZScVvJw==
X-CSE-MsgGUID: 3N9oFM45Qze/Cuz9xmbdXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221512701"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:07:46 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/19] drm/i915/overlay: Remove GPU hang snapshot stuff
Date: Thu, 26 Feb 2026 12:07:20 +0200
Message-ID: <20260226100738.29997-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
References: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 443BE1A3F9E
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The overlay snapshot stuff is a bit annoying because some of
it more or less of belongs on the gt side, and some on the
display side. Remove the whole thing to avoid having to deal
with it when splitting the overlay code around the i915
vs. display boundary. I don't think I've ever actually used
this for anything, so no real loss from my POV. And it can
always be resurrected later should the need arise.

v2: Rebase due to kmalloc_obj()

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_snapshot.c |  4 -
 drivers/gpu/drm/i915/display/intel_overlay.c  | 89 -------------------
 drivers/gpu/drm/i915/display/intel_overlay.h  | 18 ----
 3 files changed, 111 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
index f650f15ad394..7f423182aa29 100644
--- a/drivers/gpu/drm/i915/display/intel_display_snapshot.c
+++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
@@ -19,7 +19,6 @@ struct intel_display_snapshot {
 	struct intel_display_device_info info;
 	struct intel_display_runtime_info runtime_info;
 	struct intel_display_params params;
-	struct intel_overlay_snapshot *overlay;
 	struct intel_dmc_snapshot *dmc;
 	struct intel_display_irq_snapshot *irq;
 };
@@ -41,7 +40,6 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
 	intel_display_params_copy(&snapshot->params);
 
 	snapshot->irq = intel_display_irq_snapshot_capture(display);
-	snapshot->overlay = intel_overlay_snapshot_capture(display);
 	snapshot->dmc = intel_dmc_snapshot_capture(display);
 
 	return snapshot;
@@ -61,7 +59,6 @@ void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
 	intel_display_params_dump(&snapshot->params, display->drm->driver->name, p);
 
 	intel_display_irq_snapshot_print(snapshot->irq, p);
-	intel_overlay_snapshot_print(snapshot->overlay, p);
 	intel_dmc_snapshot_print(snapshot->dmc, p);
 }
 
@@ -73,7 +70,6 @@ void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
 	intel_display_params_free(&snapshot->params);
 
 	kfree(snapshot->irq);
-	kfree(snapshot->overlay);
 	kfree(snapshot->dmc);
 	kfree(snapshot);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 9cd368d6ef59..6cea82ecc3ec 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1464,92 +1464,3 @@ void intel_overlay_cleanup(struct intel_display *display)
 
 	kfree(overlay);
 }
-
-#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
-
-struct intel_overlay_snapshot {
-	struct overlay_registers regs;
-	unsigned long base;
-	u32 dovsta;
-	u32 isr;
-};
-
-struct intel_overlay_snapshot *
-intel_overlay_snapshot_capture(struct intel_display *display)
-{
-	struct intel_overlay *overlay = display->overlay;
-	struct intel_overlay_snapshot *error;
-
-	if (!overlay || !overlay->active)
-		return NULL;
-
-	error = kmalloc_obj(*error, GFP_ATOMIC);
-	if (error == NULL)
-		return NULL;
-
-	error->dovsta = intel_de_read(display, DOVSTA);
-	error->isr = intel_de_read(display, GEN2_ISR);
-	error->base = overlay->flip_addr;
-
-	memcpy_fromio(&error->regs, overlay->regs, sizeof(error->regs));
-
-	return error;
-}
-
-void
-intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
-			     struct drm_printer *p)
-{
-	if (!error)
-		return;
-
-	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
-		   error->dovsta, error->isr);
-	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
-
-#define P(x) drm_printf(p, "    " #x ": 0x%08x\n", error->regs.x)
-	P(OBUF_0Y);
-	P(OBUF_1Y);
-	P(OBUF_0U);
-	P(OBUF_0V);
-	P(OBUF_1U);
-	P(OBUF_1V);
-	P(OSTRIDE);
-	P(YRGB_VPH);
-	P(UV_VPH);
-	P(HORZ_PH);
-	P(INIT_PHS);
-	P(DWINPOS);
-	P(DWINSZ);
-	P(SWIDTH);
-	P(SWIDTHSW);
-	P(SHEIGHT);
-	P(YRGBSCALE);
-	P(UVSCALE);
-	P(OCLRC0);
-	P(OCLRC1);
-	P(DCLRKV);
-	P(DCLRKM);
-	P(SCLRKVH);
-	P(SCLRKVL);
-	P(SCLRKEN);
-	P(OCONFIG);
-	P(OCMD);
-	P(OSTART_0Y);
-	P(OSTART_1Y);
-	P(OSTART_0U);
-	P(OSTART_0V);
-	P(OSTART_1U);
-	P(OSTART_1V);
-	P(OTILEOFF_0Y);
-	P(OTILEOFF_1Y);
-	P(OTILEOFF_0U);
-	P(OTILEOFF_0V);
-	P(OTILEOFF_1U);
-	P(OTILEOFF_1V);
-	P(FASTHSCALE);
-	P(UVSCALEV);
-#undef P
-}
-
-#endif
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
index d259e4c74b03..4ef6882b9acb 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.h
+++ b/drivers/gpu/drm/i915/display/intel_overlay.h
@@ -13,7 +13,6 @@ struct drm_file;
 struct drm_printer;
 struct intel_display;
 struct intel_overlay;
-struct intel_overlay_snapshot;
 
 #ifdef I915
 void intel_overlay_setup(struct intel_display *display);
@@ -55,21 +54,4 @@ static inline void intel_overlay_reset(struct intel_display *display)
 }
 #endif
 
-#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) && defined(I915)
-struct intel_overlay_snapshot *
-intel_overlay_snapshot_capture(struct intel_display *display);
-void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
-				  struct drm_printer *p);
-#else
-static inline struct intel_overlay_snapshot *
-intel_overlay_snapshot_capture(struct intel_display *display)
-{
-	return NULL;
-}
-static inline void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
-						struct drm_printer *p)
-{
-}
-#endif
-
 #endif /* __INTEL_OVERLAY_H__ */
-- 
2.52.0

