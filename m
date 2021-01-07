Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F092EE93B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 23:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B5F6E575;
	Thu,  7 Jan 2021 22:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614436E578
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 22:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610059965;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FefrCvtgHc4zx+jKJhsVluNmZv/u7VtNXp1c2c2tpc4=;
 b=VwvHXQmD19p84hD/4CX6s9SmdRyWG3pGE2iQP7wEy7egP9lnkxRJZHZegsW4BIxRGGEH8q
 BflKsJ5j8feZSK27FlAp0j7fj0Nhgd6te1f4FN9R/xCOxCNaN2cI9p1LzIK+0eCGjD0CZT
 3GD5R1dgF6DVUfn9ZRz87oxw9QIubn8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-MtT76RcbMyuca4BFfM9JkQ-1; Thu, 07 Jan 2021 17:52:43 -0500
X-MC-Unique: MtT76RcbMyuca4BFfM9JkQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7550C80362F;
 Thu,  7 Jan 2021 22:52:39 +0000 (UTC)
Received: from Ruby.redhat.com (ovpn-118-135.rdu2.redhat.com [10.10.118.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 22D115B4BD;
 Thu,  7 Jan 2021 22:52:38 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jan 2021 17:52:06 -0500
Message-Id: <20210107225207.28091-4-lyude@redhat.com>
In-Reply-To: <20210107225207.28091-1-lyude@redhat.com>
References: <20210107225207.28091-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Intel-gfx] [PATCH v5 3/4] drm/i915/dp: Allow forcing specific
 interfaces through enable_dpcd_backlight
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we now support controlling panel backlights through DPCD using
both the standard VESA interface, and Intel's proprietary HDR backlight
interface, we should allow the user to be able to explicitly choose
between one or the other in the event that we're wrong about panels
reliably reporting support for the Intel HDR interface.

So, this commit adds support for this by introducing two new
enable_dpcd_backlight options: 2 which forces i915 to only probe for the
VESA interface, and 3 which forces i915 to only probe for the Intel
backlight interface (might be useful if we find panels in the wild that
report the VESA interface in their VBT, but actually only support the
Intel backlight interface).

v3:
* Rebase

Signed-off-by: Lyude Paul <lyude@redhat.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Cc: thaytan@noraisin.net
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 45 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_params.c            |  2 +-
 2 files changed, 43 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 5e761fb49a14..4b2cb20b1f94 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -613,15 +613,54 @@ static const struct intel_panel_bl_funcs intel_dp_vesa_bl_funcs = {
 	.get = intel_dp_aux_vesa_get_backlight,
 };
 
+enum intel_dp_aux_backlight_modparam {
+	INTEL_DP_AUX_BACKLIGHT_AUTO = -1,
+	INTEL_DP_AUX_BACKLIGHT_OFF = 0,
+	INTEL_DP_AUX_BACKLIGHT_ON = 1,
+	INTEL_DP_AUX_BACKLIGHT_FORCE_VESA = 2,
+	INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL = 3,
+};
+
 int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 {
 	struct drm_device *dev = connector->base.dev;
 	struct intel_panel *panel = &connector->panel;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	bool try_intel_interface = false, try_vesa_interface = false;
 
-	if (i915->params.enable_dpcd_backlight == 0)
+	/* Check the VBT and user's module parameters to figure out which
+	 * interfaces to probe
+	 */
+	switch (i915->params.enable_dpcd_backlight) {
+	case INTEL_DP_AUX_BACKLIGHT_OFF:
 		return -ENODEV;
+	case INTEL_DP_AUX_BACKLIGHT_AUTO:
+		switch (i915->vbt.backlight.type) {
+		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
+			try_vesa_interface = true;
+			break;
+		case INTEL_BACKLIGHT_DISPLAY_DDI:
+			try_intel_interface = true;
+			try_vesa_interface = true;
+			break;
+		default:
+			return -ENODEV;
+		}
+		break;
+	case INTEL_DP_AUX_BACKLIGHT_ON:
+		if (i915->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
+			try_intel_interface = true;
+
+		try_vesa_interface = true;
+		break;
+	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
+		try_vesa_interface = true;
+		break;
+	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
+		try_intel_interface = true;
+		break;
+	}
 
 	/*
 	 * A lot of eDP panels in the wild will report supporting both the
@@ -630,13 +669,13 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	 * and will only work with the Intel interface. So, always probe for
 	 * that first.
 	 */
-	if (intel_dp_aux_supports_hdr_backlight(connector)) {
+	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector)) {
 		drm_dbg_kms(dev, "Using Intel proprietary eDP backlight controls\n");
 		panel->backlight.funcs = &intel_dp_hdr_bl_funcs;
 		return 0;
 	}
 
-	if (intel_dp_aux_supports_vesa_backlight(connector)) {
+	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
 		drm_dbg_kms(dev, "Using VESA eDP backlight controls\n");
 		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;
 		return 0;
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 7f139ea4a90b..6939634e56ed 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -185,7 +185,7 @@ i915_param_named_unsafe(inject_probe_failure, uint, 0400,
 
 i915_param_named(enable_dpcd_backlight, int, 0400,
 	"Enable support for DPCD backlight control"
-	"(-1=use per-VBT LFP backlight type setting [default], 0=disabled, 1=enabled)");
+	"(-1=use per-VBT LFP backlight type setting [default], 0=disabled, 1=enable, 2=force VESA interface, 3=force Intel interface)");
 
 #if IS_ENABLED(CONFIG_DRM_I915_GVT)
 i915_param_named(enable_gvt, bool, 0400,
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
