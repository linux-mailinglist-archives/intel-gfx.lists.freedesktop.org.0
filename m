Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 198DB7E4BCC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 23:35:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F6D410E0DB;
	Tue,  7 Nov 2023 22:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC8510E0EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 22:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1699396506;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qXPnvaStMZ9obE0ABz68AFZgVZDOdhIPxQHI7BcRm1c=;
 b=F29qNkRkmdKZ0FUVEBBA1isiBMw78cfOz+aDfdskvpXUd/2qt/2CmJrmyx81c6dmsLxrcN
 l0ynLWBf+28czhfmgzu5GmjCFrNWv4MPomHQbMTNJCWW9KYz8NzPCvKWOnGLQTij0WVLTa
 hnsUYRCmjUTIviw8yVNlfV8JRIfNHYo=
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com
 [209.85.219.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-246-heRr1lvpPOytvpr5-6OZEw-1; Tue, 07 Nov 2023 17:35:04 -0500
X-MC-Unique: heRr1lvpPOytvpr5-6OZEw-1
Received: by mail-yb1-f198.google.com with SMTP id
 3f1490d57ef6-da04fb79246so7155591276.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Nov 2023 14:35:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699396503; x=1700001303;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bFpB8zIRBXB12Koda6bM8FkIjdCGp8dSifvqkDv0LBM=;
 b=OVEz9EP3UhCn1QGAcwdeD83cYhBAJ/JeX0XH4mqYoW8oCDgechR2m69Ic6orD3i3oE
 O6b7VeDaf8hcxPiq612ZsdX2vmdd0GkUSLI+hYhOGWZsMCA0l5+8zSWmaxp0JqZcmdgK
 sRGZYqTQ0TZHI7pT3rt2ukGrr06KwAwmzJu63WP7ptyFawRaum1wGVvEIa/gl0bB1z6a
 xA15FjNVqCQ04r7A5eVBab5K7LYtEl/5wQRXdgU/NaDjlcv2QfNVjWo7w3C2gxDCL0G2
 36imceHcg01725Vpqte30Cy2uOqdlgxGvVBKA9SrmfuE9y4PXLD21L6/D7kd51JAHUGy
 wgWw==
X-Gm-Message-State: AOJu0YzxvqUPKAJbhvKmsHAXHfUiHWqWUrbrmkl8tij8FsVuMaNBxK+7
 wdtGOzcoHFZi9/iVonBrAxow54icyU3CenROS6s3DuGrPwbPt1vvlB0byHEXzmmlhR94WFl+FTg
 vPTOMwFi+V3j4mEb0jINtbr+zUr3O
X-Received: by 2002:a25:7241:0:b0:c4b:ada8:8b86 with SMTP id
 n62-20020a257241000000b00c4bada88b86mr103574ybc.64.1699396503749; 
 Tue, 07 Nov 2023 14:35:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH96r61CIrmKFAG4AeCvGiiNn64aiW7vluM9Mi2t4NZFpVBO+jkXgLIgIwLpu5UnXBYQE0DUw==
X-Received: by 2002:a25:7241:0:b0:c4b:ada8:8b86 with SMTP id
 n62-20020a257241000000b00c4bada88b86mr103562ybc.64.1699396503489; 
 Tue, 07 Nov 2023 14:35:03 -0800 (PST)
Received: from ?IPv6:2600:4040:5c6c:a300::feb? ([2600:4040:5c6c:a300::feb])
 by smtp.gmail.com with ESMTPSA id
 w5-20020a0cfc45000000b00674648411b3sm354887qvp.132.2023.11.07.14.35.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Nov 2023 14:35:03 -0800 (PST)
Message-ID: <05c29ad8ab3cdb0691a8e1f22a25bca47c4ea895.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 07 Nov 2023 17:35:02 -0500
In-Reply-To: <20231030155843.2251023-7-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-7-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 06/30] drm/dp_mst: Allow DSC in any
 Synaptics last branch device
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Mon, 2023-10-30 at 17:58 +0200, Imre Deak wrote:
> The Synaptics MST branch devices support DSC decompression on all their
> output ports, provided that they are last branch devices (with their
> output ports connected to the sinks). The Thinkpad 40B0 TBT dock for
> instance has two such branch devices, a secondary one connected to one
> of the output ports of the primary; hence the decompression needs to be
> enabled in both branch devices to enable decompression for all the
> sinks.
>=20
> Based on the above add support for enabling decompression in last
> Synaptics branch devices.
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: dri-devel@lists.freedesktop.org
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 21 ++++++++++++-------
>  1 file changed, 13 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/=
drm/display/drm_dp_mst_topology.c
> index 5972c93615f18..cc0a8fe84d290 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -5994,6 +5994,7 @@ static bool drm_dp_mst_is_virtual_dpcd(struct drm_d=
p_mst_port *port)
>  struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *p=
ort)
>  {
>  =09struct drm_dp_mst_port *immediate_upstream_port;
> +=09struct drm_dp_aux *immediate_upstream_aux;
>  =09struct drm_dp_mst_port *fec_port;
>  =09struct drm_dp_desc desc =3D {};
>  =09u8 endpoint_fec;
> @@ -6058,21 +6059,25 @@ struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(st=
ruct drm_dp_mst_port *port)
>  =09 * - Port is on primary branch device
>  =09 * - Not a VGA adapter (DP_DWN_STRM_PORT_TYPE_ANALOG)
>  =09 */
> -=09if (drm_dp_read_desc(port->mgr->aux, &desc, true))
> +=09if (immediate_upstream_port)
> +=09=09immediate_upstream_aux =3D &immediate_upstream_port->aux;
> +=09else
> +=09=09immediate_upstream_aux =3D port->mgr->aux;
> +
> +=09if (drm_dp_read_desc(immediate_upstream_aux, &desc, true))
>  =09=09return NULL;
> =20
> -=09if (drm_dp_has_quirk(&desc, DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) &=
&
> -=09    port->mgr->dpcd[DP_DPCD_REV] >=3D DP_DPCD_REV_14 &&
> -=09    port->parent =3D=3D port->mgr->mst_primary) {
> +=09if (drm_dp_has_quirk(&desc, DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD)) =
{
>  =09=09u8 dpcd_ext[DP_RECEIVER_CAP_SIZE];
> =20
> -=09=09if (drm_dp_read_dpcd_caps(port->mgr->aux, dpcd_ext) < 0)
> +=09=09if (drm_dp_read_dpcd_caps(immediate_upstream_aux, dpcd_ext) < 0)
>  =09=09=09return NULL;
> =20
> -=09=09if ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESEN=
T) &&
> +=09=09if (dpcd_ext[DP_DPCD_REV] >=3D DP_DPCD_REV_14 &&
> +=09=09    ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESE=
NT) &&
>  =09=09    ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_TYPE_=
MASK)
> -=09=09     !=3D DP_DWN_STRM_PORT_TYPE_ANALOG))
> -=09=09=09return port->mgr->aux;
> +=09=09     !=3D DP_DWN_STRM_PORT_TYPE_ANALOG)))
> +=09=09=09return immediate_upstream_aux;
>  =09}
> =20
>  =09/*

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

