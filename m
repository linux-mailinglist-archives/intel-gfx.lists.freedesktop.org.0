Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EB29EAC50
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 10:36:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC1A10E85F;
	Tue, 10 Dec 2024 09:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Mo4UamHR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BC710E858
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 09:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1733823396;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LVaggClDk0v6DxqBIr8rSNLckk7O8I9tAhXLRAjBDic=;
 b=Mo4UamHRdnbfZfoFeBW6eYv4UkKTsjtXGX5MlgDygH8w1a2X4p7VKkOmngLt9+d4ddK6uP
 57wU/VsfY/2StvQZzrTwEomFkuYuwKUUXoUBo1RXx99QdLVyTNfKOm+IyM5SIRfPulXOk6
 3XFkbqnPTgVVYPcIkvVGBqjipL7L1lg=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-187-9zsftm08PQumOdxhP8DrZQ-1; Tue,
 10 Dec 2024 04:36:33 -0500
X-MC-Unique: 9zsftm08PQumOdxhP8DrZQ-1
X-Mimecast-MFC-AGG-ID: 9zsftm08PQumOdxhP8DrZQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id F3AA91955DC1; Tue, 10 Dec 2024 09:36:31 +0000 (UTC)
Received: from hydra.redhat.com (unknown [10.39.193.39])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 8E4BB1956089; Tue, 10 Dec 2024 09:36:28 +0000 (UTC)
From: Jocelyn Falempe <jfalempe@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH v3 2/6] drm/i915/display/i9xx: Add a disable_tiling() for i9xx
 planes
Date: Tue, 10 Dec 2024 10:28:42 +0100
Message-ID: <20241210093505.589893-3-jfalempe@redhat.com>
In-Reply-To: <20241210093505.589893-1-jfalempe@redhat.com>
References: <20241210093505.589893-1-jfalempe@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

drm_panic draws in linear framebuffer, so it's easier to re-use the
current framebuffer, and disable tiling in the panic handler, to show
the panic screen.

Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 23 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 17a1e3801a85c..671d3914585bf 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -848,6 +848,27 @@ static const struct drm_plane_funcs i8xx_plane_funcs = {
 	.format_mod_supported = i8xx_plane_format_mod_supported,
 };
 
+static void i9xx_disable_tiling(struct intel_plane *plane)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+	u32 dspcntr;
+	u32 reg;
+
+	dspcntr = intel_de_read_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane));
+	dspcntr &= ~DISP_TILED;
+	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
+
+	if (DISPLAY_VER(dev_priv) >= 4) {
+		reg = intel_de_read_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane));
+		intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane), reg);
+
+	} else {
+		reg = intel_de_read_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane));
+		intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane), reg);
+	}
+}
+
 struct intel_plane *
 intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
@@ -973,6 +994,8 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		plane->disable_flip_done = ilk_primary_disable_flip_done;
 	}
 
+	plane->disable_tiling = i9xx_disable_tiling;
+
 	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_TILING_X);
 
 	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ff6eb93337e0a..31804fb99e168 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1482,6 +1482,8 @@ struct intel_plane {
 			   bool async_flip);
 	void (*enable_flip_done)(struct intel_plane *plane);
 	void (*disable_flip_done)(struct intel_plane *plane);
+	/* For drm_panic */
+	void (*disable_tiling)(struct intel_plane *plane);
 };
 
 #define to_intel_atomic_state(x) container_of(x, struct intel_atomic_state, base)
-- 
2.47.1

