Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2222564A350
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 15:29:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4168F10E1D4;
	Mon, 12 Dec 2022 14:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D752810E195
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 14:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670855386; x=1702391386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KYQRTT2g2Cn8l3aTJwODplaar0sSr7kdwWfGivlpv0M=;
 b=mq1FVbNxT6OisQiQQe1j/CE4dzaSKFFu57TeutVdK10ituhmcJYASzTd
 jDsJDLSd3Y4Cefuhrr05r0mxGC/joeZmK964+jfS08AaZLYLYMQpDmUu0
 1QZQjs9u5JBWUA37vtOSiaXFkSgG87YDKhMDIpchId05R9l0cUUK9v1Zh
 vcJd0upfciKkgDaKqD4gDFTwIg6vqoAp/KzMwMyK0rIrlYqbu3H0EvuD1
 nUNdNaDFJ0US3sD7t2yLyAg7HVZVeFUKNladgTBaK9fhxq/+h5QZZ3qw8
 P2tXUgv+nv4VgPgC3qp4yKNmhJ0OyN5tne2pnahPhzEJ2yRXtIcQlUZR8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="316558454"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="316558454"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="790511205"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="790511205"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 16:29:22 +0200
Message-Id: <8b7e188de7b6cd8bf9e9849e315d51751f9d2b14.1670855299.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670855299.git.jani.nikula@intel.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/hdmi: abstract scanline range wait
 into intel_vblank.[ch]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's not have scanline waits inline in hdmi code.

This kind of waits should really have timeouts; add a FIXME comment.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   |  9 ++-------
 drivers/gpu/drm/i915/display/intel_vblank.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
 3 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e82f8a07e2b0..af6ef665368e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -56,6 +56,7 @@
 #include "intel_lspcon.h"
 #include "intel_panel.h"
 #include "intel_snps_phy.h"
+#include "intel_vblank.h"
 
 static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
 {
@@ -1476,15 +1477,9 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_crtc *crtc = to_intel_crtc(connector->base.state->crtc);
-	u32 scanline;
 	int ret;
 
-	for (;;) {
-		scanline = intel_de_read(dev_priv, PIPEDSL(crtc->pipe));
-		if (scanline > 100 && scanline < 200)
-			break;
-		usleep_range(25, 50);
-	}
+	intel_wait_for_pipe_scanline_range(crtc, 100, 200);
 
 	ret = intel_ddi_toggle_hdcp_bits(&dig_port->base, cpu_transcoder,
 					 false, TRANS_DDI_HDCP_SIGNALLING);
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index f25ec643a0a3..aec7758ef917 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -452,3 +452,17 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
 {
 	wait_for_pipe_scanline_moving(crtc, true);
 }
+
+void intel_wait_for_pipe_scanline_range(struct intel_crtc *crtc, u32 start, u32 end)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 scanline;
+
+	/* FIXME: This needs to timeout and/or check that scanline is moving. */
+	for (;;) {
+		scanline = intel_de_read(dev_priv, PIPEDSL(crtc->pipe));
+		if (scanline > start && scanline < end)
+			break;
+		usleep_range(25, 50);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 54870cabd734..e88addfccea8 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -19,5 +19,6 @@ bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
 int intel_get_crtc_scanline(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
+void intel_wait_for_pipe_scanline_range(struct intel_crtc *crtc, u32 start, u32 end);
 
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.34.1

