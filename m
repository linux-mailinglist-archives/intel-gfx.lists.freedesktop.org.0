Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFCB61057F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 00:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1271510E725;
	Thu, 27 Oct 2022 22:15:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B3210E72D
 for <Intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 22:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666908942; x=1698444942;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wtuaasyOYWWRrHvZ1rVJ0N54WtOniCKAh812Zau1MzQ=;
 b=QZqgYnGb5tV7S5KMLo1/cRoVbn41AvUTwMCAhmpKD6LZxlqUJ0EQTLiD
 cfg7z0MMwEflbGWlJpXnOJKvbpGy1j8A1mItZ7IAlXJvIVBy8XIjbnxZY
 02XBqrdusm+mfGVu7z3woE+ve/aY4kGBo6E3MS9nJM+PMgdjMBpKeUkJB
 MIcQ0AjmV6Z02A3Xp3oaTBOAJcQBiAb1MK1eJ1W7dHQh8rfPlVEB327Hu
 3I5uBTInImWNrN7N86z/FGK24ToCW15lC2C0gN1FeboznLUGCwp0VKadT
 Lv2zf8R4+dkRQt/6Yz0bCN1iha9DYMYl9nKbpMLoNoEbroMoZyw8Hl6DH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295763714"
X-IronPort-AV: E=Sophos;i="5.95,219,1661842800"; d="scan'208";a="295763714"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 15:15:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="583716530"
X-IronPort-AV: E=Sophos;i="5.95,219,1661842800"; d="scan'208";a="583716530"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 15:15:41 -0700
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 27 Oct 2022 15:13:15 -0700
Message-Id: <20221027221315.2762940-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
References: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/hdmi: SPD infoframe update for
 discrete
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

Replace internal with discrete of dgfx platforms.

v2: commit title reword (Jani)
v3: use variable name i915 (Jani)
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 02f8374ea51f..7c5133871897 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -766,6 +766,7 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct hdmi_spd_infoframe *frame = &crtc_state->infoframes.spd.spd;
 	int ret;
 
@@ -775,7 +776,10 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
 	crtc_state->infoframes.enable |=
 		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD);
 
-	ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
+	if (IS_DGFX(i915))
+		ret = hdmi_spd_infoframe_init(frame, "Intel", "Discrete gfx");
+	else
+		ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
 	if (drm_WARN_ON(encoder->base.dev, ret))
 		return false;
 
-- 
2.25.1

