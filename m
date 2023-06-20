Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6443A73738C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 20:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4047B10E198;
	Tue, 20 Jun 2023 18:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759D210E198
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 18:12:23 +0000 (UTC)
Date: Tue, 20 Jun 2023 18:12:06 +0000
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="SCWOgswk"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1687284734; x=1687543934;
 bh=GtbBTDHru8D51gxY0nixzxGVoKTku4w5U+AcR1WfGuw=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=SCWOgswk/6WqR/mh4+6xFnIS90qxxtjhORdALv6wVWvJAC+HKWNzvqlBS5VP/5vrv
 SE0dtXbM0zNizkAWGTRXmgc9Q0Rh8cyxpyF5O1ZDMTa8gvIB383tsgCyoQtcTiEg2U
 csbJkQudL1HXkvhejDm5gMvfo53dAhmwznp2O2lsDJVM8GDMckd2xGpt9VvBeuw4tM
 vfhv3DA4hmwBLswOGu/irk+3d59o1LDUZS17+NrUk8//6mLgMdasPzAGKr8TDUY75b
 XsyI9cW7LxvWO63S4QeT0QToYoxPynVw97U4Q+cVxY56boOXQ5GQhpQEHKioox6lR6
 XK5lMdr1iolcQ==
To: intel-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <20230620181203.272076-1-contact@emersion.fr>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH] i915/display/hotplug: use
 drm_kms_helper_connector_hotplug_event()
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This adds more information to the hotplug uevent and lets user-space
know that it's about a particular connector only.

Signed-off-by: Simon Ser <contact@emersion.fr>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm=
/i915/display/intel_hotplug.c
index 1160fa20433b..605c6e05a169 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -376,6 +376,7 @@ static void i915_hotplug_work_func(struct work_struct *=
work)
 =09u32 changed =3D 0, retry =3D 0;
 =09u32 hpd_event_bits;
 =09u32 hpd_retry_bits;
+=09struct drm_connector *first_changed_connector =3D NULL;
=20
 =09mutex_lock(&dev_priv->drm.mode_config.mutex);
 =09drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
@@ -428,6 +429,10 @@ static void i915_hotplug_work_func(struct work_struct =
*work)
 =09=09=09=09break;
 =09=09=09case INTEL_HOTPLUG_CHANGED:
 =09=09=09=09changed |=3D hpd_bit;
+=09=09=09=09if (!first_changed_connector) {
+=09=09=09=09=09drm_connector_get(&connector->base);
+=09=09=09=09=09first_changed_connector =3D &connector->base;
+=09=09=09=09}
 =09=09=09=09break;
 =09=09=09case INTEL_HOTPLUG_RETRY:
 =09=09=09=09retry |=3D hpd_bit;
@@ -438,9 +443,14 @@ static void i915_hotplug_work_func(struct work_struct =
*work)
 =09drm_connector_list_iter_end(&conn_iter);
 =09mutex_unlock(&dev_priv->drm.mode_config.mutex);
=20
-=09if (changed)
+=09if (hweight32(changed) =3D=3D 1)
+=09=09drm_kms_helper_connector_hotplug_event(first_changed_connector);
+=09else if (changed)
 =09=09drm_kms_helper_hotplug_event(&dev_priv->drm);
=20
+=09if (first_changed_connector)
+=09=09drm_connector_put(first_changed_connector);
+
 =09/* Remove shared HPD pins that have changed */
 =09retry &=3D ~changed;
 =09if (retry) {
--=20
2.41.0


