Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 433AA429C72
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 06:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB07F89F8B;
	Tue, 12 Oct 2021 04:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C0E89F71
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 04:35:25 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-odJkaWTrM8KoDhBYxSCzYg-1; Tue, 12 Oct 2021 00:35:23 -0400
X-MC-Unique: odJkaWTrM8KoDhBYxSCzYg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2FEF7835DE0;
 Tue, 12 Oct 2021 04:35:22 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0FE1F60BF4;
 Tue, 12 Oct 2021 04:35:20 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Tue, 12 Oct 2021 14:34:56 +1000
Message-Id: <20211012043502.1377715-3-airlied@gmail.com>
In-Reply-To: <20211012043502.1377715-1-airlied@gmail.com>
References: <20211012043502.1377715-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/display: let
 intel_plane_uses_fence be used from other places.
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

From: Dave Airlie <airlied@redhat.com>

I want to refactor some stuff using this so make it shared.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index d1fa17929b1f..5254180934bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -851,7 +851,7 @@ unsigned int intel_remapped_info_size(const struct inte=
l_remapped_info *rem_info
 =09return size;
 }
=20
-static bool intel_plane_uses_fence(const struct intel_plane_state *plane_s=
tate)
+bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 {
 =09struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
 =09struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm=
/i915/display/intel_display.h
index a08903bb7647..d655d996d465 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -615,6 +615,7 @@ void ilk_pfit_disable(const struct intel_crtc_state *ol=
d_crtc_state);
 int bdw_get_pipemisc_bpp(struct intel_crtc *crtc);
 unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *pl=
ane_state);
=20
+bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
 bool
 intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
 =09=09=09=09    u64 modifier);
--=20
2.25.4

