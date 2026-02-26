Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CO/cEpcboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFA01A3FF7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45BD310E8B5;
	Thu, 26 Feb 2026 10:08:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kzzvwqUS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1F610E8B9;
 Thu, 26 Feb 2026 10:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100500; x=1803636500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4EFJ0bVZmnkvk8g1P1h6PLH4Md0xwWm1DQBpk5ua1jc=;
 b=kzzvwqUSaRLuWpiurxrg0/e9EkJgfwXsdqkHrShvbI6qlK3h8WcbFSmT
 ys/6aEU7JP1ZoSaspqDSW3qbohIFA82OPOlwm43RlM0XWn6oQUnhmOvaF
 BprrwzpkXWBVzb+7ebpxNOn5oGjPweiPnPYFsD01C2sOJhflEIP7sSpyc
 1VhR/Z5k32bYjvqaWg35oQ2kdrcX0qbCf3N1fu1vxw4SNlQvc6togFpme
 oRXQI0mIMgSrXRVH6vv4iTKQNBVrAEu4NfCSZV3mMhOjlMqrWnCeuekWD
 A/oBM4HnAadiMX8F6jyLEX8QHvuivxICzZD3E+pzQ6cGbAhg8Opbfh96W w==;
X-CSE-ConnectionGUID: a4rqHVZpS3WIKKtoyrM2EA==
X-CSE-MsgGUID: d+79zrSmQE6hTVLVWogLcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73029809"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73029809"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:20 -0800
X-CSE-ConnectionGUID: P3zcOZQCRvy1wq0k5ahILw==
X-CSE-MsgGUID: kxFVvEfWQMujrqf01H2f8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="214518216"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:19 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/19] drm/i915/overlay: Extract i915_overlay_setup()
Date: Thu, 26 Feb 2026 12:07:28 +0200
Message-ID: <20260226100738.29997-10-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: AFFA01A3FF7
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the gem/gt related bits of the overlay setup into
a separate function (i915_overlay_setup()) that will eventually
move to the i915 side of the parent vs. display driver split.

For now we'll also have to pass in the overlay struct, but
that will disappear once the i915 vs. display split is completed.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 40 ++++++++++++--------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 9070d88d25b5..1b84790a63b2 100644
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
 
 	overlay = kzalloc_obj(*overlay);
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

