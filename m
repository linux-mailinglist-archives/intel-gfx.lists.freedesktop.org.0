Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D433E73B3D8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 11:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045A410E633;
	Fri, 23 Jun 2023 09:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4022.proton.ch (mail-4022.proton.ch [185.70.40.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA76110E032
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 09:42:46 +0000 (UTC)
Date: Fri, 23 Jun 2023 09:42:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1687513363; x=1687772563;
 bh=gT/hFPfbITG4VFPtNeo5wwjwThRz+wCwdxQi8gMQgRU=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=swE33TT9/MK2TY8wU6FxZBZWfAFn3FIJLh5qZ+jfLRK6VoK4kflk5ND9GwyFFpHX5
 DYcusR5tx8wKp9D6pt7MQjGs1DtkmirGqEIQ4/R0DiBA0NoPm9vUnZGCkSFL0ODaqW
 6eDy5IKFtMsDS0Js25eGQZFcBk3i68z7KCGBnmqpdl0MuHanWJT8U6dDna11clBdug
 Pjh//SpX+pupBi2Qxz8W1GG6vFV3BqR1pyuYW303+vJiTNZl8Y+a3h32YfpAuLUFlx
 D5m8anhYkx9s/rHNzBnOMU59/4Yjxo9mdO4SOfvgGT4jSmZBHsE3+KkG0covy452Xk
 lYgUwh1sOrOlg==
To: intel-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <20230623094229.120264-1-contact@emersion.fr>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH v2] i915/display/hotplug: use
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

v2: don't rely on the changed HPD pin bitmask to count changed
    connectors (Jani)

Signed-off-by: Simon Ser <contact@emersion.fr>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm=
/i915/display/intel_hotplug.c
index 1160fa20433b..0ff5ed46ae1e 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -376,6 +376,8 @@ static void i915_hotplug_work_func(struct work_struct *=
work)
 =09u32 changed =3D 0, retry =3D 0;
 =09u32 hpd_event_bits;
 =09u32 hpd_retry_bits;
+=09struct drm_connector *first_changed_connector =3D NULL;
+=09int changed_connectors =3D 0;
=20
 =09mutex_lock(&dev_priv->drm.mode_config.mutex);
 =09drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
@@ -428,6 +430,11 @@ static void i915_hotplug_work_func(struct work_struct =
*work)
 =09=09=09=09break;
 =09=09=09case INTEL_HOTPLUG_CHANGED:
 =09=09=09=09changed |=3D hpd_bit;
+=09=09=09=09changed_connectors++;
+=09=09=09=09if (!first_changed_connector) {
+=09=09=09=09=09drm_connector_get(&connector->base);
+=09=09=09=09=09first_changed_connector =3D &connector->base;
+=09=09=09=09}
 =09=09=09=09break;
 =09=09=09case INTEL_HOTPLUG_RETRY:
 =09=09=09=09retry |=3D hpd_bit;
@@ -438,9 +445,14 @@ static void i915_hotplug_work_func(struct work_struct =
*work)
 =09drm_connector_list_iter_end(&conn_iter);
 =09mutex_unlock(&dev_priv->drm.mode_config.mutex);
=20
-=09if (changed)
+=09if (changed_connectors =3D=3D 1)
+=09=09drm_kms_helper_connector_hotplug_event(first_changed_connector);
+=09else if (changed_connectors > 0)
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


