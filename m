Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A022364DE17
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 16:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41CBF10E38D;
	Thu, 15 Dec 2022 15:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E7C10E38D
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 15:52:04 +0000 (UTC)
Date: Thu, 15 Dec 2022 15:51:50 +0000
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="gdSauJpJ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1671119518; x=1671378718;
 bh=l+z6EbQeqQGWrQhvJedrPUY3zZRwLYNo3h0mRJzzb4w=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=gdSauJpJ15VaVJ1vl2qaWnQgd2XTF7jAmxlS44M2HoJhcgeJmWZKhm82A9p7yEfcF
 A5gB7+u/jgE0Oit88Hj0+ADAKUpzcf+fPEhdfY1g737eb8iN+eBM7LKiCFFS6iALCA
 kApcR4xd+LOBiXSjZlz2b0Qul3v2bdXpHNq+49Ajw+mWxU/cEhywbapv7z6fdBgS3H
 mhm9z2C85yeyWuyrREd91yi6NlMtaJYtvT8yxmzfE3WmIaG2RW6t/cUFt34UMmRJHo
 OE5L9/xOeXXwiCaPHzd1v5njiNz1iLKCaYpZhgYYLglIwI7KdpwRg0M3KOGO+1gdY0
 9oAJzm9O2mfGg==
To: intel-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <20221215155138.246676-2-contact@emersion.fr>
In-Reply-To: <20221215155138.246676-1-contact@emersion.fr>
References: <20221215155138.246676-1-contact@emersion.fr>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp_mst: don't pull unregistered
 connectors into state
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In intel_dp_mst_atomic_master_trans_check(), we pull connectors
sharing the same DP-MST stream into the atomic state. However,
if the connector is unregistered, this later fails with:

    [  559.425658] i915 0000:00:02.0: [drm:drm_atomic_helper_check_modeset]=
 [CONNECTOR:378:DP-7] is not registered

Skip these unregistered connectors to allow user-space to turn them
off.

Fixes part of this wlroots issue:
https://gitlab.freedesktop.org/wlroots/wlroots/-/issues/3407

Signed-off-by: Simon Ser <contact@emersion.fr>
Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/=
i915/display/intel_dp_mst.c
index f773e117ebc4..70859a927a9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -280,7 +280,8 @@ intel_dp_mst_atomic_master_trans_check(struct intel_con=
nector *connector,
 =09=09struct intel_crtc *crtc;
=20
 =09=09if (connector_iter->mst_port !=3D connector->mst_port ||
-=09=09    connector_iter =3D=3D connector)
+=09=09    connector_iter =3D=3D connector ||
+=09=09    connector_iter->base.registration_state =3D=3D DRM_CONNECTOR_UNR=
EGISTERED)
 =09=09=09continue;
=20
 =09=09conn_iter_state =3D intel_atomic_get_digital_connector_state(state,
--=20
2.39.0


