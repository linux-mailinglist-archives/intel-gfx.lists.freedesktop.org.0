Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646D4424C30
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 05:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FBB6E828;
	Thu,  7 Oct 2021 03:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FAF36E82E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 03:17:08 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-369-vY48yk2fM26fvagF5McYPw-1; Wed, 06 Oct 2021 23:17:03 -0400
X-MC-Unique: vY48yk2fM26fvagF5McYPw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C7758824FA7;
 Thu,  7 Oct 2021 03:17:02 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3AA2E5D9C6;
 Thu,  7 Oct 2021 03:17:00 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Thu,  7 Oct 2021 13:13:18 +1000
Message-Id: <20211007031318.3088987-9-airlied@gmail.com>
In-Reply-To: <20211007031318.3088987-1-airlied@gmail.com>
References: <20211007031318.3088987-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/display: drop unused parameter to
 dpt pin
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

The uses_fence isn't used.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/=
i915/display/intel_fb_pin.c
index 760436b99a34..fac94e1fec8b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -18,7 +18,6 @@
 static struct i915_vma *
 intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 =09=09     const struct i915_ggtt_view *view,
-=09=09     bool uses_fence,
 =09=09     unsigned long *out_flags,
 =09=09     struct i915_address_space *vm)
 {
@@ -236,7 +235,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_=
state)
=20
 =09=09plane_state->ggtt_vma =3D vma;
=20
-=09=09vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt, false,
+=09=09vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt,
 =09=09=09=09=09   &plane_state->flags, intel_fb->dpt_vm);
 =09=09if (IS_ERR(vma)) {
 =09=09=09intel_dpt_unpin(intel_fb->dpt_vm);
--=20
2.25.4

