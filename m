Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wD+SJ7TalWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D4B15766E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEE010E5E5;
	Wed, 18 Feb 2026 15:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nFTJRl8S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769B210E5E5;
 Wed, 18 Feb 2026 15:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428529; x=1802964529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P73+0tH4mI2i6zaEjm/N9Y7yFFHh/D/NgUtd2KK9quU=;
 b=nFTJRl8SjlY3lwfB3kjIPjKrYkK0kHvdfyDnRmqAa6o9w7jLo3XDYIeW
 J8m/pqkxWnMpKkzp1mjXrWJ3zu+K8pl5YujUMRKHLvQkkuTgutK+Whrvx
 kVn2iciYpReSlP10PLwF/ITze8uOfQ/G4L3ArvsEfVbzSQo2ZC+Wtxp1K
 VlcqjibbKAsaGVZwr3oS7kWq6b5a/qiO+lhETdOKhX3Q/4gKIoIdUC70B
 oWOB8E5Gr9cCcO+GYhG/kL+tZsfvw+KEnPwsDtp9j/Oqyqc7m+zUvdfBG
 dnkXal15KPYdGBfL6vJ6JboG5OoMBbCA4f/6AUgsqqWBFS36W8QArcb5r Q==;
X-CSE-ConnectionGUID: 8hNLHl2VSR+uZ479y0rSYw==
X-CSE-MsgGUID: WNVNwE/ARrajjyNlvdgkaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="60084470"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="60084470"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:49 -0800
X-CSE-ConnectionGUID: /FikamPMSUeRcd1FKkoD7w==
X-CSE-MsgGUID: gbLj30RTTvyZAX2MKZbxXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="218756642"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:48 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/19] drm/i915/overlay: Extract i915_overlay_setup()
Date: Wed, 18 Feb 2026 17:27:56 +0200
Message-ID: <20260218152806.18885-10-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 24D4B15766E
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the gem/gt related bits of the overlay setup into
a separate function (i915_overlay_setup()) that will eventually
move to the i915 side of the parent vs. display driver split.

For now we'll also have to pass in the overlay struct, but
that will disappear once the i915 vs. display split is completed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 40 ++++++++++++--------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 8c1ed540a8e3..5683bddf33b4 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1430,39 +1430,49 @@ static int get_registers(struct intel_overlay *overlay, bool use_phys)
 	return err;
 }
 
-void intel_overlay_setup(struct intel_display *display)
+static int i915_overlay_setup(struct drm_device *drm,
+			      struct intel_overlay *overlay,
+			      bool needs_physical)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	struct intel_overlay *overlay;
+	struct drm_i915_private *dev_priv = to_i915(drm);
 	struct intel_engine_cs *engine;
-	int ret;
-
-	if (!HAS_OVERLAY(display))
-		return;
 
 	engine = to_gt(dev_priv)->engine[RCS0];
 	if (!engine || !engine->kernel_context)
+		return -ENOENT;
+
+	overlay->context = engine->kernel_context;
+
+	i915_active_init(&overlay->last_flip,
+			 NULL, intel_overlay_last_flip_retire, 0);
+
+	return get_registers(overlay, needs_physical);
+}
+
+void intel_overlay_setup(struct intel_display *display)
+{
+	struct intel_overlay *overlay;
+	int ret;
+
+	if (!HAS_OVERLAY(display))
 		return;
 
 	overlay = kzalloc(sizeof(*overlay), GFP_KERNEL);
 	if (!overlay)
 		return;
 
+	ret = i915_overlay_setup(display->drm, overlay,
+				 OVERLAY_NEEDS_PHYSICAL(display));
+	if (ret)
+		goto out_free;
+
 	overlay->display = display;
-	overlay->context = engine->kernel_context;
 	overlay->color_key = 0x0101fe;
 	overlay->color_key_enabled = true;
 	overlay->brightness = -19;
 	overlay->contrast = 75;
 	overlay->saturation = 146;
 
-	i915_active_init(&overlay->last_flip,
-			 NULL, intel_overlay_last_flip_retire, 0);
-
-	ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(display));
-	if (ret)
-		goto out_free;
-
 	memset_io(overlay->regs, 0, sizeof(struct overlay_registers));
 	update_polyphase_filter(overlay->regs);
 	update_reg_attrs(overlay, overlay->regs);
-- 
2.52.0

