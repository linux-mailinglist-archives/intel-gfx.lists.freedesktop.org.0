Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FDD4031EE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 02:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9498A6E102;
	Wed,  8 Sep 2021 00:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 731E06E0FE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 00:40:33 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-IrVkHnRMMyebY_LsWws10A-1; Tue, 07 Sep 2021 20:40:31 -0400
X-MC-Unique: IrVkHnRMMyebY_LsWws10A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BCBE800FF3;
 Wed,  8 Sep 2021 00:40:30 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 461DB60C7F;
 Wed,  8 Sep 2021 00:40:29 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Wed,  8 Sep 2021 10:39:41 +1000
Message-Id: <20210908003944.2972024-19-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-1-airlied@gmail.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 18/21] drm/i915: drop unused function ptr and
 comments.
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

There was some excess comments and an unused vtbl ptr.
---
 drivers/gpu/drm/i915/i915_drv.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 085012727549..2231b93c2111 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -409,13 +409,6 @@ struct drm_i915_display_funcs {
 =09void (*crtc_disable)(struct intel_atomic_state *state,
 =09=09=09     struct intel_crtc *crtc);
 =09void (*commit_modeset_enables)(struct intel_atomic_state *state);
-=09void (*commit_modeset_disables)(struct intel_atomic_state *state);
-
-=09/* clock updates for mode set */
-=09/* cursor updates */
-=09/* render clock increase/decrease */
-=09/* display clock increase/decrease */
-=09/* pll clock increase/decrease */
 };
=20
=20
--=20
2.31.1

