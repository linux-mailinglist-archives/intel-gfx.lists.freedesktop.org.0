Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3770B2DDE60
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 07:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED11892FF;
	Fri, 18 Dec 2020 06:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 576EA89AB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 06:04:41 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-328-AVWdvkFxPB6YRAdlwimvvg-1; Fri, 18 Dec 2020 01:04:38 -0500
X-MC-Unique: AVWdvkFxPB6YRAdlwimvvg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 589F48015C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 06:04:37 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BFBF060BE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 06:04:36 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 16:04:20 +1000
Message-Id: <20201218060420.3203-14-airlied@gmail.com>
In-Reply-To: <20201218060420.3203-1-airlied@gmail.com>
References: <20201218060420.3203-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 13/13] drm/i915: move is_ccs_modifier to an
 inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

There is no need for this to be out of line.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 8 --------
 drivers/gpu/drm/i915/display/intel_display.h       | 1 -
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 ++++++++
 3 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 47d7c6198377..a27a961c835f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1791,14 +1791,6 @@ intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
 	}
 }
 
-bool is_ccs_modifier(u64 modifier)
-{
-	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
-	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-	       modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-	       modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
-}
-
 static int gen12_ccs_aux_stride(struct drm_framebuffer *fb, int ccs_plane)
 {
 	return DIV_ROUND_UP(fb->pitches[skl_ccs_to_main_plane(fb, ccs_plane)],
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7f021d0f9b13..9efdee9c95b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -508,7 +508,6 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    struct intel_link_m_n *m_n,
 			    bool constant_n, bool fec_enable);
-bool is_ccs_modifier(u64 modifier);
 void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 262c372cec79..11c8e7b9e619 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1834,6 +1834,14 @@ static inline u32 intel_fdi_link_freq(struct drm_i915_private *dev_priv,
 		return dev_priv->fdi_pll_freq;
 }
 
+static inline bool is_ccs_modifier(u64 modifier)
+{
+	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
+	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
+	       modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
+	       modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
+}
+
 static inline bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
 {
 	if (!is_ccs_modifier(fb->modifier))
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
