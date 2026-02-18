Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNFoCJLalWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C48A6157634
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D87B10E2F7;
	Wed, 18 Feb 2026 15:28:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZkMgKW7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F1510E2F7;
 Wed, 18 Feb 2026 15:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428495; x=1802964495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g94edSlO9F6wjXDCpEvw4+94+e0kDGo/rNbgPHuN7gA=;
 b=kZkMgKW7EyOPVz891jVVKA4AglsUgtPu3wNYpyCBW+qGj6yBkLN+/b/Q
 sSIOs/QbJEDMzH9x2IfXe2oAxTXfvRAjii8NRIeqqmZ+zZjnht9loVHWu
 u/lIiOutMTlK4BeCuGdOa/3j/lrlYLmrhtL8awZd9V7PGHiJr2IWmOloP
 vPCHIb0Lahpyc+GWEH/xcVpUdh+crNG1hz35JrqrNmKQPj36rsqme0SA1
 Pu95FTTnvOTSmfRvJYmM6W4ZM+ZzlykvVZAVQtGmRpz1+muPsyXnuewT5
 wpvGXYGWNVdZjwzcd/MIDVcB+MN556c69KHlAmcUNTZBk4lZ5w8g+98jZ g==;
X-CSE-ConnectionGUID: 9ZYNRC2WThKk2wyCkPyz2g==
X-CSE-MsgGUID: CyQfVvo+S12cycuGt5XJjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72420147"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="72420147"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:15 -0800
X-CSE-ConnectionGUID: 8ClMZVA4SmWn1/KsuQL2XQ==
X-CSE-MsgGUID: vffumlgNRL2x8Ib+Jwaiyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="214335071"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:14 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/19] drm/i915/overlay: Remove GPU hang snapshot stuff
Date: Wed, 18 Feb 2026 17:27:48 +0200
Message-ID: <20260218152806.18885-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
References: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C48A6157634
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The overlay snapshot stuff is a bit annoying because some of
it more or less of belongs on the gt side, and some on the
display side. Remove the whole thing to avoid having to deal
with it when splitting the overlay code around the i915
vs. display boundary. I don't think I've ever actually used
this for anything, so no real loss from my POV. And it can
always be resurrected later should the need arise.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_snapshot.c |  4 -
 drivers/gpu/drm/i915/display/intel_overlay.c  | 89 -------------------
 drivers/gpu/drm/i915/display/intel_overlay.h  | 18 ----
 3 files changed, 111 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
index 66087302fdbc..74072562af8f 100644
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
index e7838f4d2dac..33a38d116c90 100644
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
-	error = kmalloc(sizeof(*error), GFP_ATOMIC);
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

