Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPtFLawboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 682DE1A4035
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF9110E8C1;
	Thu, 26 Feb 2026 10:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGtMrkGn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13F4F10E8C2;
 Thu, 26 Feb 2026 10:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100522; x=1803636522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CQMVo8FT+6YvSbXquKQbaOt5QBt/aEODbXlNcitY2fs=;
 b=hGtMrkGnkFAu3zTwe9SoVC1Z92RbBXhnl0XiTIb/IvbTVVmEpaxJWrM3
 oldCpuS0ncDERpTnKGSIt8WBkd2eM4ERGL8nJ86vN8DiJjHhgf8UpPBtN
 AApM18mLz1NqrlXlONssGAlqeEGO9cJ+mSHMgeKSxu4VfEVtRhvGXUVNL
 bwj4z/6LGCtuFqQFrt+NmMuLP4JAqmOmwdL8kW8VHkP/YdoxOHUes9RwX
 +9v1XXYIQc5JRVg3OYP8LduvORO0FOhPs6f5D7iaA5noPKUoVG+qZtxOb
 3NcU8FPQfNihzt5cihpiLpqUiQRHPl2sRHhSCuON82ARlBo5/yzasKndf g==;
X-CSE-ConnectionGUID: 27BFJAkZQMSSyWDSJ+us6Q==
X-CSE-MsgGUID: MI8oIEIFTSK7NvahVYywTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90738857"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="90738857"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:42 -0800
X-CSE-ConnectionGUID: mpgFh6URQRSW46WezGoilw==
X-CSE-MsgGUID: 5kAIag6LRau1jatfYsuNVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="247057536"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:40 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 14/19] drm/i915/overlay: Make i830_overlay_clock_gating()
 i915 specific
Date: Thu, 26 Feb 2026 12:07:33 +0200
Message-ID: <20260226100738.29997-15-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 682DE1A4035
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

i830_overlay_clock_gating() will remain on the i915 side of the
parent vs. display driver split. Stop using display specific stuff
inside it.

The one annoyance here is access to the display engine's
DSPCLK_GATE_D register. The proper way to deal with that might
be to move it to the display side, but that seems a bit hard right
now. So leave it where it is for now.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 24 ++++++++++++--------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index a516fc28f093..98c3992f07dd 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -210,17 +210,21 @@ struct intel_overlay {
 	void (*flip_complete)(struct intel_overlay *ovl);
 };
 
-static void i830_overlay_clock_gating(struct intel_display *display,
+static void i830_overlay_clock_gating(struct drm_i915_private *i915,
 				      bool enable)
 {
-	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	u8 val;
 
-	/* WA_OVERLAY_CLKGATE:alm */
+	/*
+	 * WA_OVERLAY_CLKGATE:alm
+	 *
+	 * FIXME should perhaps be done on the display side?
+	 */
 	if (enable)
-		intel_de_write(display, DSPCLK_GATE_D, 0);
+		intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, 0);
 	else
-		intel_de_write(display, DSPCLK_GATE_D, OVRUNIT_CLOCK_GATE_DISABLE);
+		intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, OVRUNIT_CLOCK_GATE_DISABLE);
 
 	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
 	pci_bus_read_config_byte(pdev->bus,
@@ -266,6 +270,7 @@ static bool i915_overlay_is_active(struct drm_device *drm)
 static int i915_overlay_on(struct drm_device *drm,
 			   u32 frontbuffer_bits)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_display *display = to_intel_display(drm);
 	struct intel_overlay *overlay = display->overlay;
 	struct i915_request *rq;
@@ -285,8 +290,8 @@ static int i915_overlay_on(struct drm_device *drm,
 
 	overlay->frontbuffer_bits = frontbuffer_bits;
 
-	if (display->platform.i830)
-		i830_overlay_clock_gating(display, false);
+	if (IS_I830(i915))
+		i830_overlay_clock_gating(i915, false);
 
 	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_ON;
 	*cs++ = overlay->flip_addr | OFC_UPDATE;
@@ -383,13 +388,14 @@ static void i915_overlay_release_old_vid_tail(struct intel_overlay *overlay)
 static void i915_overlay_off_tail(struct intel_overlay *overlay)
 {
 	struct intel_display *display = overlay->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	i915_overlay_release_old_vma(overlay);
 
 	overlay->frontbuffer_bits = 0;
 
-	if (display->platform.i830)
-		i830_overlay_clock_gating(display, true);
+	if (IS_I830(i915))
+		i830_overlay_clock_gating(i915, true);
 }
 
 static void i915_overlay_last_flip_retire(struct i915_active *active)
-- 
2.52.0

