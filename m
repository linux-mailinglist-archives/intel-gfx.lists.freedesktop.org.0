Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 358319F7EE6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 17:07:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C68610E4A4;
	Thu, 19 Dec 2024 16:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.emlix.com (mx1.emlix.com [178.63.209.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308BF10E2BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 10:26:42 +0000 (UTC)
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id B17CC5F8DD;
 Thu, 19 Dec 2024 11:18:36 +0100 (CET)
From: Rolf Eike Beer <eb@emlix.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] drm/i915/selftests: check the return value of
 i915_gem_object_trylock()
Date: Thu, 19 Dec 2024 11:16:51 +0100
Message-ID: <9379466.CDJkKcVGEf@devpool47.emlix.com>
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

A trylock can fail, in which case operating on the object is unsafe and
unconditionally unlocking is wrong.

Signed-off-by: Rolf Eike Beer <eb@emlix.com>
=2D--
 drivers/gpu/drm/i915/gt/selftest_migrate.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i=
915/gt/selftest_migrate.c
index ca460cee4f8b..b2cb501febe8 100644
=2D-- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -822,7 +822,10 @@ create_init_lmem_internal(struct intel_gt *gt, size_t =
sz, bool try_lmem)
 			return obj;
 	}
=20
=2D	i915_gem_object_trylock(obj, NULL);
+	if (!i915_gem_object_trylock(obj, NULL)) {
+		i915_gem_object_put(obj);
+		return ERR_PTR(-EBUSY);
+	}
 	err =3D i915_gem_object_pin_pages(obj);
 	if (err) {
 		i915_gem_object_unlock(obj);
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


