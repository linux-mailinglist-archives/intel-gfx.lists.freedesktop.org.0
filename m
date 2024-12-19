Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8A29F7EE9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 17:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CCF10E34D;
	Thu, 19 Dec 2024 16:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 477 seconds by postgrey-1.36 at gabe;
 Thu, 19 Dec 2024 10:26:35 UTC
Received: from mx1.emlix.com (mx1.emlix.com [178.63.209.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC5F710E2BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 10:26:35 +0000 (UTC)
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 723E35F880;
 Thu, 19 Dec 2024 11:18:36 +0100 (CET)
From: Rolf Eike Beer <eb@emlix.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] drm/i915: mark i915_gem_object_trylock() as __must_check
Date: Thu, 19 Dec 2024 11:18:08 +0100
Message-ID: <6005320.MhkbZ0Pkbq@devpool47.emlix.com>
Organization: emlix GmbH
In-Reply-To: <7746997.EvYhyI6sBW@devpool47.emlix.com>
References: <7746997.EvYhyI6sBW@devpool47.emlix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Thu, 19 Dec 2024 16:07:24 +0000
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

When you don't look at the return code you can't know if you actually got t=
he
lock.

Signed-off-by: Rolf Eike Beer <eb@emlix.com>
=2D--
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i=
915/gem/i915_gem_object.h
index 3dc61cbd2e11..b6da8b561ae0 100644
=2D-- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -198,8 +198,8 @@ static inline int i915_gem_object_lock_interruptible(st=
ruct drm_i915_gem_object
 	return __i915_gem_object_lock(obj, ww, true);
 }
=20
=2Dstatic inline bool i915_gem_object_trylock(struct drm_i915_gem_object *o=
bj,
=2D					   struct i915_gem_ww_ctx *ww)
+static inline bool __must_check i915_gem_object_trylock(struct drm_i915_ge=
m_object *obj,
+							struct i915_gem_ww_ctx *ww)
 {
 	if (!ww)
 		return dma_resv_trylock(obj->base.resv);
=2D-=20
2.47.1


=2D-=20
Rolf Eike Beer

emlix GmbH
Headquarters: Berliner Str. 12, 37073 G=C3=B6ttingen, Germany
Phone +49 (0)551 30664-0, e-mail info@emlix.com
District Court of G=C3=B6ttingen, Registry Number HR B 3160
Managing Directors: Heike Jordan, Dr. Uwe Kracke
VAT ID No. DE 205 198 055
Office Berlin: Panoramastr. 1, 10178 Berlin, Germany
Office Bonn: Bachstr. 6, 53115 Bonn, Germany
http://www.emlix.com

emlix - your embedded Linux partner


