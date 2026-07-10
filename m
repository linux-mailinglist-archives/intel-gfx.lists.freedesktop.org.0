Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g9SIDTfUUGqK5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE1773A083
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=dDH4LNWI;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5812D10F865;
	Fri, 10 Jul 2026 11:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C115F10F87A;
 Fri, 10 Jul 2026 11:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783682096;
 bh=puNEFq/vgUL5AClDAG8HJvqijCJH00dnnk6QrChIzrw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dDH4LNWI/DLSqOazCxCu+qO54jIzYRnd70Deq/FKbFZk/vZCQIk/yIR3xsws7zOny
 vzeaGYFBT5ZhaAZfXkV8Ww3j7UKYJ+ruEQ8SuJwN2tfsoIUDx8qITlLFzcm+8Q3D2f
 NSvPSgxc0smi5NQrsQZOV/8V0wdr7uZIOBsTirWR2OHgm5h9XTu6rVWXI0jVFVsE5Y
 hlEPQ4HQeITgxd4uQXvOrlAIBPj6GzjGnT6Cxtn4oFQQRemHHdT3vgpwNltWoP/tg5
 +O7oi10RjsvfWvgS+3jw/4087z8EpM5ytBbePaP/Pk/ydPq/CmcmVJsti+NbUFBvWg
 Jw6f8/VcmqFFg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 02/11] drm/i915/fbdev: Extract bios_fb_ok()
Date: Fri, 10 Jul 2026 13:15:29 +0200
Message-ID: <20260710111539.1274555-3-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260710111539.1274555-1-dev@lankhorst.se>
References: <20260710111539.1274555-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:from_mime,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFE1773A083

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the "is the BIOS FB OK?" checks to a helper function. We'll
add other relevant checks there later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Link: https://patch.msgid.link/20260511214122.8468-3-ville.syrjala@linux.intel.com
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 26 +++++++++++++++-------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index c8d4e3a5ce6b1..bc267776106e8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -262,6 +262,23 @@ __intel_fbdev_fb_alloc(struct intel_display *display,
 
 }
 
+static bool bios_fb_ok(const struct intel_framebuffer *fb,
+		       const struct drm_fb_helper_surface_size *sizes)
+{
+	struct intel_display *display = to_intel_display(fb->base.dev);
+	int width = fb->base.width;
+	int height = fb->base.height;
+
+	if (sizes->fb_width > width || sizes->fb_height > height) {
+		drm_dbg_kms(display->drm,
+			    "BIOS fb too small (%dx%d), we require (%dx%d), releasing it\n",
+			    width, height, sizes->fb_width, sizes->fb_height);
+		return false;
+	}
+
+	return true;
+}
+
 int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 				   struct drm_fb_helper_surface_size *sizes)
 {
@@ -279,14 +296,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	ifbdev->fb = NULL;
 
-	if (fb &&
-	    (sizes->fb_width > fb->base.width ||
-	     sizes->fb_height > fb->base.height)) {
-		drm_dbg_kms(display->drm,
-			    "BIOS fb too small (%dx%d), we require (%dx%d),"
-			    " releasing it\n",
-			    fb->base.width, fb->base.height,
-			    sizes->fb_width, sizes->fb_height);
+	if (fb && !bios_fb_ok(fb, sizes)) {
 		drm_framebuffer_put(&fb->base);
 		fb = NULL;
 	}
-- 
2.53.0

