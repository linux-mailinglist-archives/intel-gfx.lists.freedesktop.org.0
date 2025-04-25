Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AA8A9C426
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 11:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5665910E907;
	Fri, 25 Apr 2025 09:50:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="MU0t5hLE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90C5910E8FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 09:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745574633;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l4zfRamAANJi/R0hC8TGqDhodvx2sHMq+dzzXl8IRGw=;
 b=MU0t5hLEMArY3TEw817sl3qBoGDTyAVIREkwG+KugZ4ykwSjIxTtO4A/sRUCWp8aCmSblH
 lG/xA0nosjA16L7t0idhRum9J5fZWIFFwiZJ1UbtQb+i/lqhKj18fCrJ/feGSuqTrS/Kso
 w6HEhuLl+csfjaIQ+5HxhuW4gauZAkU=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-435-J1cns0yvMNKVBJUuZBzSlQ-1; Fri,
 25 Apr 2025 05:50:32 -0400
X-MC-Unique: J1cns0yvMNKVBJUuZBzSlQ-1
X-Mimecast-MFC-AGG-ID: J1cns0yvMNKVBJUuZBzSlQ_1745574630
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B53B51800264; Fri, 25 Apr 2025 09:50:30 +0000 (UTC)
Received: from hydra.redhat.com (unknown [10.44.34.172])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id BD20D195608D; Fri, 25 Apr 2025 09:50:26 +0000 (UTC)
From: Jocelyn Falempe <jfalempe@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH v7 3/8] drm/i915/display: Add a disable_tiling() for skl planes
Date: Fri, 25 Apr 2025 11:37:49 +0200
Message-ID: <20250425094949.473060-4-jfalempe@redhat.com>
In-Reply-To: <20250425094949.473060-1-jfalempe@redhat.com>
References: <20250425094949.473060-1-jfalempe@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

This assumes that the alignment restriction is always smaller in
linear than in tiled.
It also assumes that the linear framebuffer size is always smaller
than the tiled.

Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
---

v7:
 * Reword commit message about alignment/size when disabling tiling (Ville Syrjälä)

 .../drm/i915/display/skl_universal_plane.c    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8739195aba69..64a1e8e7122d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2790,6 +2790,25 @@ static u8 tgl_plane_caps(struct intel_display *display,
 	return caps;
 }
 
+static void skl_disable_tiling(struct intel_plane *plane)
+{
+	struct intel_plane_state *state = to_intel_plane_state(plane->base.state);
+	struct intel_display *display = to_intel_display(plane);
+	u32 stride = state->view.color_plane[0].scanout_stride / 64;
+	u32 plane_ctl;
+
+	plane_ctl = intel_de_read(display, PLANE_CTL(plane->pipe, plane->id));
+	plane_ctl &= ~PLANE_CTL_TILED_MASK;
+
+	intel_de_write_fw(display, PLANE_STRIDE(plane->pipe, plane->id),
+			  PLANE_STRIDE_(stride));
+
+	intel_de_write_fw(display, PLANE_CTL(plane->pipe, plane->id), plane_ctl);
+
+	intel_de_write_fw(display, PLANE_SURF(plane->pipe, plane->id),
+			  skl_plane_surf(state, 0));
+}
+
 struct intel_plane *
 skl_universal_plane_create(struct intel_display *display,
 			   enum pipe pipe, enum plane_id plane_id)
@@ -2836,6 +2855,7 @@ skl_universal_plane_create(struct intel_display *display,
 		plane->max_height = skl_plane_max_height;
 		plane->min_cdclk = skl_plane_min_cdclk;
 	}
+	plane->disable_tiling = skl_disable_tiling;
 
 	if (DISPLAY_VER(display) >= 13)
 		plane->max_stride = adl_plane_max_stride;
-- 
2.49.0

