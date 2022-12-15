Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF6664DE18
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 16:52:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171FE10E377;
	Thu, 15 Dec 2022 15:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0986D10E377
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 15:51:56 +0000 (UTC)
Date: Thu, 15 Dec 2022 15:51:45 +0000
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="SRlzQH8v"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1671119508; x=1671378708;
 bh=xujOyX0v5E6U/x+/5MOd5EEKUlrexl5vYkEYbgd8hc0=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=SRlzQH8vvOuLo1Pq5ZDK7oxVG/77PN9LETGabH2Ng6My1ED+D6X/yTm0LRHl1QHzJ
 /PAjV3SkZeMvp9Ekkn71sXhG4Dl/qr21nQNzhlVOJUrPRoD6thsXKuP0Sl1NN2otfY
 C39DaZNIgd/JsvF4SiBRr2Nb6YiHEovZ5a4aIsNefBlxOTw7oXNXCjDGt0lujO3Fve
 nYKp/OexxX7TCm+N6IdNUxq8X6AJd+H1RlyE6NMzLMtoH+2c2WS8DfHdsjNlNAwqTM
 X89+PwcHIB3CMh9KEB0uGFMfIYLWwOPP8UQJ02Ds9J8Zy+D7aMRr8+zjhTra8r+lV1
 5msM9Q17mUeLw==
To: intel-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <20221215155138.246676-1-contact@emersion.fr>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp_mst: log when pulling CRTCs
 into atomic state
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

It can be surprising for user-space to see unrelated connectors,
CRTCs and planes being implicitly pulled into the atomic commit.
Log when that happens.

Signed-off-by: Simon Ser <contact@emersion.fr>
Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/=
i915/display/intel_dp_mst.c
index 4077a979a924..f773e117ebc4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -293,6 +293,10 @@ intel_dp_mst_atomic_master_trans_check(struct intel_co=
nnector *connector,
 =09=09if (!conn_iter_state->base.crtc)
 =09=09=09continue;
=20
+=09=09drm_dbg_kms(&dev_priv->drm,
+=09=09=09    "Adding [CONNECTOR:%d:%s] which shares the same DP-MST stream=
\n",
+=09=09=09    connector_iter->base.base.id, connector_iter->base.name);
+
 =09=09crtc =3D to_intel_crtc(conn_iter_state->base.crtc);
 =09=09crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
 =09=09if (IS_ERR(crtc_state)) {
--=20
2.39.0


