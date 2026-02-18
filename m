Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OOYGMnalWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:29:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14405157691
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:29:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C81610E5D6;
	Wed, 18 Feb 2026 15:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Shgz1PF3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48F010E5F1;
 Wed, 18 Feb 2026 15:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428550; x=1802964550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xri3Bq6pwTvam13sklGq2UU5nw3uoTui9J7QMBqPsVk=;
 b=Shgz1PF33DSDm31ejVmeNOfOpkbW/Sc3zNbKNZHyL3P85qlL73XFP53T
 EM9qRCVEhxWqMKi5jMHFvzx1mos848zDeQnGzbFVYaaT7B9LI+WONGJmJ
 38lEupU3hp+XMIwWj0JjQnJAaVzcRtDDF7hbps2bJnGPALHZjXy3cvgyT
 55CSIN1PL2cqBdw0x/fyHWMn7i01MRX3+2/tY7AHpERlRqfPU598wpzMi
 V9aiVRPOe9G1AGyTFnpY/251g3aWG/xSrupxBdfiR6QsdGL0+rND0NxQ5
 4XQ9Rb4eTQn3zfnP6Ob10WWYEsN/FnTyFRccltc9CSWZEiSukLi2V98nh w==;
X-CSE-ConnectionGUID: BtBw9WccSay6ZoervPMfsA==
X-CSE-MsgGUID: EsEg+tT2T9e5qotS5fQHBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="60084509"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="60084509"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:29:09 -0800
X-CSE-ConnectionGUID: YHGmDLH9ReaBeo/yLbWKeQ==
X-CSE-MsgGUID: /ntOaWF4T+uUaZGyrDsbag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="218756683"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:29:08 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 14/19] drm/i915/overlay: Make i830_overlay_clock_gating() i915
 specific
Date: Wed, 18 Feb 2026 17:28:01 +0200
Message-ID: <20260218152806.18885-15-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 14405157691
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

i830_overlay_clock_gating() will remain on the i915 side of the
parent vs. display driver split. Stop using display specific stuff
inside it.

The one annoyance here is access to the display engine's
DSPCLK_GATE_D register. The proper way to deal with that might
be to move it to the display side, but that seems a bit hard right
now. So leave it where it is for now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 24 ++++++++++++--------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index f51673cf94de..1b792926e076 100644
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

