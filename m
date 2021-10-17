Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD449430CE8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 01:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9FD66E840;
	Sun, 17 Oct 2021 23:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB36C6E83C
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 23:41:20 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-574-TjVfyS4qNNmT2x82kHc2Yw-1; Sun, 17 Oct 2021 19:41:16 -0400
X-MC-Unique: TjVfyS4qNNmT2x82kHc2Yw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8BFF10A8E01;
 Sun, 17 Oct 2021 23:41:15 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9A23B5D6D5;
 Sun, 17 Oct 2021 23:41:14 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 09:41:05 +1000
Message-Id: <20211017234106.2412994-4-airlied@gmail.com>
In-Reply-To: <20211017234106.2412994-1-airlied@gmail.com>
References: <20211017234106.2412994-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display: drop unused parameter to
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
index 0beb0aa33337..721a1477e8b1 100644
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

