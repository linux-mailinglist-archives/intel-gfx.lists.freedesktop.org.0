Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29FA8C2A7F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 21:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9627210E837;
	Fri, 10 May 2024 19:24:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="JtP0mBgU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 857D310E837
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 19:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1715369091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H5s/COFEwLwVUbuQ7mqlyTG3MKz6Z/uT/lHlq37vtRg=;
 b=JtP0mBgUCL49hwAxGU9paJnrfiEdJWB+iKLBf7byGLQz+bGzhCUmb1yPNd53LQP9fVjHGu
 odVluYqkzi/qMb3zvSgt8BS+1ZE/UMfq0MPbsAN5MnPukOz+NV4VVdmE9R/Tq19MPjczS6
 2jhXEE5CIvjE1IomZyhtQyAG52/SK6k=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-553-cqEWXuHAMjiMyIWC0Y_OaA-1; Fri, 10 May 2024 15:24:45 -0400
X-MC-Unique: cqEWXuHAMjiMyIWC0Y_OaA-1
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-6a0e2e00bddso23232036d6.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 12:24:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715369085; x=1715973885;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZnKSM9o5hrRYnw/EMCc8pfT+k94xaJYdUgEjLopjyhs=;
 b=Yfxt7EbxGbK1MK+ALsmj11ZupFSw9bGvmGkZORi3qqkIeVOgOI7w9nllimQs8d+VTS
 7j82VG2WP0Hl/w1fNloqtZL7iDuaDXUJPSwVfXdXEy/W1qItMmGd91Vi49/Xp+Idp/5n
 /Phh6oRlI3iHFawRJtSYF0+RRf06ukrhazbT0I6B3W0424ng6cItjqEr/eVykGiPR9S+
 PqST5IenWV7eR4n963AHWZ4aJfdT8h5d87wspqVgBwXUL/q+qZZ+XcOUt2Aq50pBBqZF
 ORwdHpiyBamT7e3NKipRYXOYs1N5iG4Gr5GnPnV6YUVd45zNF43BEnIR1Q2xxiBZZL5X
 kVcA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVTsGvzMumLdfBgOXYfcYnMvG61OUuYbKtzlZns0RKYf3dHJ3E7mbUd5hEFM35vX4Mb4tGgr3BBMRJ1Hb+m8bDnzqoNQiHARUwO/4f8v6hB
X-Gm-Message-State: AOJu0YzI0RN4m2EHjQXgs0nkLjp0HTZ9c4HM52uvlKEutSnSLEodOBaS
 rkmxkdt5GqVYu9U8c4mhWu5TYn3Yv8s7Q3qhHO10GM/xv/JsAY3iEhBbyXRYpp022sw52q8G4V7
 M+jSVKiBcfHjfl4ckB7AaXofE2jXmVpKfNYTtJwX2yfrFoU/6O8mUKrr4U0Jlakc/pQ==
X-Received: by 2002:a05:6214:440b:b0:6a0:99f1:75f4 with SMTP id
 6a1803df08f44-6a168142e14mr34510706d6.2.1715369084789; 
 Fri, 10 May 2024 12:24:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJazHhZKbcan+uYe/5b6TYASiDFbSY6/NEJ+kDhfzjf59nhJRPPwjRBE9IPrsSA0687I7xMQ==
X-Received: by 2002:a05:6214:440b:b0:6a0:99f1:75f4 with SMTP id
 6a1803df08f44-6a168142e14mr34510556d6.2.1715369084432; 
 Fri, 10 May 2024 12:24:44 -0700 (PDT)
Received: from chopper.lyude.net ([2600:4040:5c6c:a300::789])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6a15f18529fsm19904736d6.35.2024.05.10.12.24.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 May 2024 12:24:43 -0700 (PDT)
Message-ID: <b23e6de23a1c1d997fa5e9e9bef8c88672774d01.camel@redhat.com>
Subject: Re: [RESEND 1/6] drm/nouveau: convert to using is_hdmi and
 has_audio from display info
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Cc: amd-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, Karol Herbst <kherbst@redhat.com>, Danilo
 Krummrich <dakr@redhat.com>
Date: Fri, 10 May 2024 15:24:42 -0400
In-Reply-To: <aa45875200705205ae101c409fc2bba03b631a5e.1715353572.git.jani.nikula@intel.com>
References: <cover.1715353572.git.jani.nikula@intel.com>
 <aa45875200705205ae101c409fc2bba03b631a5e.1715353572.git.jani.nikula@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.52.1 (3.52.1-1.fc40)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Fri, 2024-05-10 at 18:08 +0300, Jani Nikula wrote:
> Prefer the parsed results for is_hdmi and has_audio in display info
> over
> calling drm_detect_hdmi_monitor() and drm_detect_monitor_audio(),
> respectively.
>=20
> Conveniently, this also removes the need to use edid_blob_ptr.
>=20
> v2: Reverse a backwards if condition (Ilia)
>=20
> Cc: Karol Herbst <kherbst@redhat.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Danilo Krummrich <dakr@redhat.com>
> Cc: nouveau@lists.freedesktop.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
> =C2=A0drivers/gpu/drm/nouveau/dispnv50/disp.c=C2=A0=C2=A0=C2=A0=C2=A0 | 8=
 ++++----
> =C2=A0drivers/gpu/drm/nouveau/dispnv50/head.c=C2=A0=C2=A0=C2=A0=C2=A0 | 8=
 +-------
> =C2=A0drivers/gpu/drm/nouveau/nouveau_connector.c | 2 +-
> =C2=A03 files changed, 6 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c
> b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> index 0c3d88ad0b0e..168c27213287 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> @@ -751,7 +751,7 @@ nv50_audio_enable(struct drm_encoder *encoder,
> struct nouveau_crtc *nv_crtc,
> =C2=A0=09struct nouveau_encoder *nv_encoder =3D
> nouveau_encoder(encoder);
> =C2=A0=09struct nvif_outp *outp =3D &nv_encoder->outp;
> =C2=A0
> -=09if (!nv50_audio_supported(encoder) ||
> !drm_detect_monitor_audio(nv_connector->edid))
> +=09if (!nv50_audio_supported(encoder) || !nv_connector-
> >base.display_info.has_audio)
> =C2=A0=09=09return;
> =C2=A0
> =C2=A0=09mutex_lock(&drm->audio.lock);
> @@ -1765,7 +1765,7 @@ nv50_sor_atomic_enable(struct drm_encoder
> *encoder, struct drm_atomic_state *sta
> =C2=A0=09if ((disp->disp->object.oclass =3D=3D GT214_DISP ||
> =C2=A0=09=C2=A0=C2=A0=C2=A0=C2=A0 disp->disp->object.oclass >=3D GF110_DI=
SP) &&
> =C2=A0=09=C2=A0=C2=A0=C2=A0 nv_encoder->dcb->type !=3D DCB_OUTPUT_LVDS &&
> -=09=C2=A0=C2=A0=C2=A0 drm_detect_monitor_audio(nv_connector->edid))
> +=09=C2=A0=C2=A0=C2=A0 nv_connector->base.display_info.has_audio)
> =C2=A0=09=09hda =3D true;
> =C2=A0
> =C2=A0=09if (!nvif_outp_acquired(outp))
> @@ -1774,7 +1774,7 @@ nv50_sor_atomic_enable(struct drm_encoder
> *encoder, struct drm_atomic_state *sta
> =C2=A0=09switch (nv_encoder->dcb->type) {
> =C2=A0=09case DCB_OUTPUT_TMDS:
> =C2=A0=09=09if (disp->disp->object.oclass !=3D NV50_DISP &&
> -=09=09=C2=A0=C2=A0=C2=A0 drm_detect_hdmi_monitor(nv_connector->edid))
> +=09=09=C2=A0=C2=A0=C2=A0 nv_connector->base.display_info.is_hdmi)
> =C2=A0=09=09=09nv50_hdmi_enable(encoder, nv_crtc,
> nv_connector, state, mode, hda);
> =C2=A0
> =C2=A0=09=09if (nv_encoder->outp.or.link & 1) {
> @@ -1787,7 +1787,7 @@ nv50_sor_atomic_enable(struct drm_encoder
> *encoder, struct drm_atomic_state *sta
> =C2=A0=09=09=09 */
> =C2=A0=09=09=09if (mode->clock >=3D 165000 &&
> =C2=A0=09=09=09=C2=A0=C2=A0=C2=A0 nv_encoder->dcb->duallink_possible &&
> -=09=09=09=C2=A0=C2=A0=C2=A0 !drm_detect_hdmi_monitor(nv_connector-
> >edid))
> +=09=09=09=C2=A0=C2=A0=C2=A0 !nv_connector-
> >base.display_info.is_hdmi)
> =C2=A0=09=09=09=09proto =3D
> NV507D_SOR_SET_CONTROL_PROTOCOL_DUAL_TMDS;
> =C2=A0=09=09} else {
> =C2=A0=09=09=09proto =3D
> NV507D_SOR_SET_CONTROL_PROTOCOL_SINGLE_TMDS_B;
> diff --git a/drivers/gpu/drm/nouveau/dispnv50/head.c
> b/drivers/gpu/drm/nouveau/dispnv50/head.c
> index 83355dbc15ee..d7c74cc43ba5 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/head.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/head.c
> @@ -127,14 +127,8 @@ nv50_head_atomic_check_view(struct
> nv50_head_atom *armh,
> =C2=A0=09struct drm_display_mode *omode =3D &asyh->state.adjusted_mode;
> =C2=A0=09struct drm_display_mode *umode =3D &asyh->state.mode;
> =C2=A0=09int mode =3D asyc->scaler.mode;
> -=09struct edid *edid;
> =C2=A0=09int umode_vdisplay, omode_hdisplay, omode_vdisplay;
> =C2=A0
> -=09if (connector->edid_blob_ptr)
> -=09=09edid =3D (struct edid *)connector->edid_blob_ptr-
> >data;
> -=09else
> -=09=09edid =3D NULL;
> -
> =C2=A0=09if (!asyc->scaler.full) {
> =C2=A0=09=09if (mode =3D=3D DRM_MODE_SCALE_NONE)
> =C2=A0=09=09=09omode =3D umode;
> @@ -162,7 +156,7 @@ nv50_head_atomic_check_view(struct nv50_head_atom
> *armh,
> =C2=A0=09 */
> =C2=A0=09if ((asyc->scaler.underscan.mode =3D=3D UNDERSCAN_ON ||
> =C2=A0=09=C2=A0=C2=A0=C2=A0 (asyc->scaler.underscan.mode =3D=3D UNDERSCAN=
_AUTO &&
> -=09=C2=A0=C2=A0=C2=A0=C2=A0 drm_detect_hdmi_monitor(edid)))) {
> +=09=C2=A0=C2=A0=C2=A0=C2=A0 connector->display_info.is_hdmi))) {
> =C2=A0=09=09u32 bX =3D asyc->scaler.underscan.hborder;
> =C2=A0=09=09u32 bY =3D asyc->scaler.underscan.vborder;
> =C2=A0=09=09u32 r =3D (asyh->view.oH << 19) / asyh->view.oW;
> diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.c
> b/drivers/gpu/drm/nouveau/nouveau_connector.c
> index 856b3ef5edb8..938832a6af15 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_connector.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_connector.c
> @@ -1034,7 +1034,7 @@ get_tmds_link_bandwidth(struct drm_connector
> *connector)
> =C2=A0=09unsigned duallink_scale =3D
> =C2=A0=09=09nouveau_duallink && nv_encoder->dcb-
> >duallink_possible ? 2 : 1;
> =C2=A0
> -=09if (drm_detect_hdmi_monitor(nv_connector->edid)) {
> +=09if (nv_connector->base.display_info.is_hdmi) {
> =C2=A0=09=09info =3D &nv_connector->base.display_info;
> =C2=A0=09=09duallink_scale =3D 1;
> =C2=A0=09}

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

