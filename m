Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 868C013FB35
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 22:17:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308326E2D6;
	Thu, 16 Jan 2020 21:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 125516E2E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 21:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579209423;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DM2/bXBA+ezEvhRLso2GEuVdGdkNVxq8iZkC2PIP4sQ=;
 b=ejzS4MWV3qrpQboRSJsQxH9nKdAlxb5Kwtx86wik9v2sQfKOOKe5TmSyxFiF1dGmDSdm1F
 LNuakgYnInrXfdKID74/8x/WE1FM+5Pq9gEIdyqzdfrHYaiADefyQS6IYFnbf5GM+VFCXC
 H1ARffjjhy2i9/q542gohtM6y8bpZi8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-3-Ki-hnCPuPmK0io2ednCgBA-1; Thu, 16 Jan 2020 16:16:56 -0500
X-MC-Unique: Ki-hnCPuPmK0io2ednCgBA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 942A11011583;
 Thu, 16 Jan 2020 21:16:53 +0000 (UTC)
Received: from malachite.bss.redhat.com (dhcp-10-20-1-90.bss.redhat.com
 [10.20.1.90])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F65A60C87;
 Thu, 16 Jan 2020 21:16:52 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 16:16:11 -0500
Message-Id: <20200116211623.53799-5-lyude@redhat.com>
In-Reply-To: <20200116211623.53799-1-lyude@redhat.com>
References: <20200116211623.53799-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Subject: [Intel-gfx] [PATCH v3 4/5] drm/i915: Don't use VBT for detecting
 DPCD backlight controls
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
Cc: Jani Nikula <jani.nikula@intel.com>, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, AceLan Kao <acelan.kao@canonical.com>,
 dri-devel@lists.freedesktop.org, Perry Yuan <pyuan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Despite the fact that the VBT appears to have a field for specifying
that a system is equipped with a panel that supports standard VESA
backlight controls over the DP AUX channel, so far every system we've
spotted DPCD backlight control support on doesn't actually set this
field correctly and all have it set to INTEL_BACKLIGHT_DISPLAY_DDI.

While we don't know the exact reason for this VBT misuse, talking with
some vendors indicated that there's a good number of laptop panels out
there that supposedly support both PWM backlight controls and DPCD
backlight controls as a workaround until Intel supports DPCD backlight
controls across platforms universally. This being said, the X1 Extreme
2nd Gen that I have here (note that Lenovo is not the hardware vendor
that informed us of this) PWM backlight controls are advertised, but
only DPCD controls actually function. I'm going to make an educated
guess here and say that on systems like this one, it's likely that PWM
backlight controls might have been intended to work but were never
really tested by QA.

Since we really need backlights to work without any extra module
parameters, let's take the risk here and rely on the standard DPCD caps
to tell us whether AUX backlight controls are supported or not. We still
check the VBT, but only to make sure that we don't enable DPCD backlight
controls on a panel that uses something other then the standard VESA
interfaces over AUX. Since panels using such non-standard interfaces
should probably have support added to i915, we'll print a warning when
seeing this in the VBT. We can remove this warning later if we end up
adding support for any custom backlight interfaces.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=112376
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Perry Yuan <pyuan@redhat.com>
Cc: AceLan Kao <acelan.kao@canonical.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c    | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 77a759361c5c..3002b600635f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -330,13 +330,17 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
 	struct intel_panel *panel = &intel_connector->panel;
 	struct drm_i915_private *dev_priv = to_i915(intel_connector->base.dev);
 
-	if (i915_modparams.enable_dpcd_backlight == 0 ||
-	    (i915_modparams.enable_dpcd_backlight == -1 &&
-	    dev_priv->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE))
-		return -ENODEV;
-
-	if (!intel_dp_aux_display_control_capable(intel_connector))
+	if (i915_modparams.enable_dpcd_backlight == 0)
 		return -ENODEV;
+	if (i915_modparams.enable_dpcd_backlight == -1) {
+		if (dev_priv->vbt.backlight.type
+		    == INTEL_BACKLIGHT_PANEL_DRIVER_INTERFACE) {
+			DRM_WARN("VBT says panel uses custom panel driver interface, not using DPCD backlight controls\n");
+			return -ENODEV;
+		}
+		if (!intel_dp_aux_display_control_capable(intel_connector))
+			return -ENODEV;
+	}
 
 	panel->backlight.setup = intel_dp_aux_setup_backlight;
 	panel->backlight.enable = intel_dp_aux_enable_backlight;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
