Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E981F5EEEA8
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32FB210E9AD;
	Thu, 29 Sep 2022 07:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB55910E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435749; x=1695971749;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lcPiMmTAQl0BfcY21FiedaE94ZepHBUjAb8THyEm4S4=;
 b=WLgf2PX8qA1dl+DW32+JLxi0yWXK3HVqPZoCcuREalm4SplIEkXzqc+j
 5TCsAcM0cKPA8KKqaRZ3nWNVDSma3Z4oz9Tm8LQcgGHPHeJmb+KCfWe16
 YNrMklLvyBOz1+/IP4VqwMWw1YBIsxeR+7BS/qED2aEj32so8hcUEaeea
 xlTbZ7eqJdxYmfaZQr4PxuFgj70CmMoo4ysoV7WIrhpID/4ydBXiOsiXV
 Eo9ii7ti2MKZx65QJ8pblt0pnqbyDbOPB7P9t9w00ivrtcnCibo9PO50d
 icKbQIGqF3NOwX7AFhcEgag9Wsq01AyRXGsD8rxo4lT5Rb18k8h+9IW8I Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="288979147"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="288979147"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655441237"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655441237"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2022 00:15:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:19 +0300
Message-Id: <20220929071521.26612-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/10] drm/i915: Assert {pre,
 post}_csc_lut were assigned sensibly
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Since we now have the extra step from hw.(de)gamma_lut into
{pre,post}_csc_lut let's make sure we didn't forget to assign
them appropriately. Ie. basically making sure intel_color_check()
was called when necessary (and that it did its job suitable well).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_color.h   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 3 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 380f44720fe6..575d2a23682a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1355,6 +1355,26 @@ static u32 i9xx_gamma_mode(struct intel_crtc_state *crtc_state)
 		return GAMMA_MODE_MODE_10BIT; /* i965+ only */
 }
 
+void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	/* make sure {pre,post}_csc_lut were correctly assigned */
+	if (DISPLAY_VER(i915) >= 10 || HAS_GMCH(i915)) {
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut);
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
+	} else {
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
+			    crtc_state->pre_csc_lut != crtc_state->hw.gamma_lut);
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->post_csc_lut != crtc_state->hw.degamma_lut &&
+			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
+	}
+}
+
 static void intel_assign_luts(struct intel_crtc_state *crtc_state)
 {
 	drm_property_replace_blob(&crtc_state->pre_csc_lut,
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 67702451e2fd..b76f18e6c452 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -24,5 +24,6 @@ int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_stat
 bool intel_color_lut_equal(struct drm_property_blob *blob1,
 			   struct drm_property_blob *blob2,
 			   u32 gamma_mode, u32 bit_precision);
+void intel_color_assert_luts(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_COLOR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 20569b6838d1..441811ac0ab0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6906,6 +6906,8 @@ static int intel_atomic_check(struct drm_device *dev,
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
+		intel_color_assert_luts(new_crtc_state);
+
 		ret = intel_async_flip_check_hw(state, crtc);
 		if (ret)
 			goto fail;
-- 
2.35.1

