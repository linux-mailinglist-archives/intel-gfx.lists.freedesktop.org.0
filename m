Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC391946F19
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Aug 2024 15:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8409B10E0A8;
	Sun,  4 Aug 2024 13:45:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="dbleNP7v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0282010E0A8
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Aug 2024 13:45:56 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-a7a9a7af0d0so1215705966b.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 04 Aug 2024 06:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1722779155; x=1723383955;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ReIkVircpSdP0oI3Y1azB/Q/+VoBYCB5Sci10Cxi1X8=;
 b=dbleNP7vA5BMkC6U5pwQu6i4MXSvjuxEfdE1J4VSMu+mMx8PobQYOSEPQARmLPRPzA
 QuWq5OnGMtwYt2tdTHV+JzHgH6SYQw1NOmkcsAFEGh69vzdyv+yqS30jGNA6wF0LNXra
 4m+nlBtOLawWq+VhO6xt0Pcxajq110+sgiuKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722779155; x=1723383955;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ReIkVircpSdP0oI3Y1azB/Q/+VoBYCB5Sci10Cxi1X8=;
 b=l8IoV8VCwb5UjKK16dGj8otdcxU54t5701fo09cnGxPZZwrbSl415MNe1vjFiZngOB
 hGokmKueus6jrsGEgs1ZkNwRjNxYA0YNOssY7HJaoCL1xahzaxMAIuYtg+CvbQzirBlJ
 X7qu5RWk2PZrh0xqCaWd56C59Hr/UP4njCJWLCKdQWCVeJzS9Dt+6B2VapqEhkPWbgDL
 MpsEHZLh0VaCk0MX6P4pihsVcPwxhIJXvnSYSLyk8ioBX+LxaSplNHLno8BnOzCEqSZo
 RHP46Ct0azbdDJrQRVw3IOxNeC9g7DwSt1AEajUWOxxKG3QXCz/kf7vvRvRTsSmDc1kc
 a/nA==
X-Gm-Message-State: AOJu0YyY928FRJ20IbLlIBuJuUBZ2DPuCMzBo3OYSxpRpixhcum57R9t
 r3nnqtCoexe0+AJFFYIdub/xSyJmcScvBNFQdC2HQmYcjgthQRoN+LgzUSKBOXdondi7e5mltEK
 udBYQgSQVwwrArD50bIazhqSedLd7ZoESA2r/
X-Google-Smtp-Source: AGHT+IHE4tai69TalBII7mKzKksl1jv0KQhKhe6HuyKzpinE/9cv+dKEH9/B6P2pLw5rbJ4JrEY3YTKGp0sRO+4Bhno=
X-Received: by 2002:a17:907:9492:b0:a7d:3ce8:131c with SMTP id
 a640c23a62f3a-a7dc50fd837mr511726366b.62.1722779155045; Sun, 04 Aug 2024
 06:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-4-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-4-imre.deak@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Sun, 4 Aug 2024 06:45:43 -0700
Message-ID: <CAE72mNkg06wZGuwrhfGazP+=1yE4ufaXZJe8chVkGV9nw_oF1g@mail.gmail.com>
Subject: Re: [PATCH 03/14] drm/dp_mst: Simplify the condition when to
 enumerate path resources
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Lyude Paul <lyude@redhat.com>, 
 dri-devel@lists.freedesktop.org
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

On Mon, Jul 22, 2024 at 9:55=E2=80=AFAM Imre Deak <imre.deak@intel.com> wro=
te:
>
> In the
>         if (old_ddps !=3D port->ddps || !created)
>                 if (port->ddps && !port->input)
>                         ret =3D drm_dp_send_enum_path_resources();
>
> sequence the first if's condition is true if the port exists already
> (!created) or the port was created anew (hence old_ddps=3D=3D0) and it wa=
s
> in the plugged state (port->ddps=3D=3D1). The second if's condition is tr=
ue
> for output ports in the plugged state. So the function is called for an
> output port in the plugged state, regardless if it already existed or
> not and regardless of the old plugged state. In all other cases
> port->full_pbn can be zeroed as the port is either an input for which
> full_pbn is never set, or an output in the unplugged state for which
> full_pbn was already zeroed previously or the port was just created
> (with port->full_pbn=3D=3D0).
>
> Simplify the condition, making it clear that the path resources are
> always enumerated for an output port in the plugged state.

Would this take care of the cases where a branch device is present
between source and the sink and
its properly allocating the resources and advertising UHBR capability
from branch to sink. This was a bug earlier
with UHBR on branch device/ MST hub

Manasi

>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/=
drm/display/drm_dp_mst_topology.c
> index 70e4bfc3532e0..bcc5bbed9bd04 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -2339,7 +2339,7 @@ drm_dp_mst_handle_link_address_port(struct drm_dp_m=
st_branch *mstb,
>  {
>         struct drm_dp_mst_topology_mgr *mgr =3D mstb->mgr;
>         struct drm_dp_mst_port *port;
> -       int old_ddps =3D 0, ret;
> +       int ret;
>         u8 new_pdt =3D DP_PEER_DEVICE_NONE;
>         bool new_mcs =3D 0;
>         bool created =3D false, send_link_addr =3D false, changed =3D fal=
se;
> @@ -2372,7 +2372,6 @@ drm_dp_mst_handle_link_address_port(struct drm_dp_m=
st_branch *mstb,
>                  */
>                 drm_modeset_lock(&mgr->base.lock, NULL);
>
> -               old_ddps =3D port->ddps;
>                 changed =3D port->ddps !=3D port_msg->ddps ||
>                         (port->ddps &&
>                          (port->ldps !=3D port_msg->legacy_device_plug_st=
atus ||
> @@ -2407,15 +2406,13 @@ drm_dp_mst_handle_link_address_port(struct drm_dp=
_mst_branch *mstb,
>          * Reprobe PBN caps on both hotplug, and when re-probing the link
>          * for our parent mstb
>          */
> -       if (old_ddps !=3D port->ddps || !created) {
> -               if (port->ddps && !port->input) {
> -                       ret =3D drm_dp_send_enum_path_resources(mgr, mstb=
,
> -                                                             port);
> -                       if (ret =3D=3D 1)
> -                               changed =3D true;
> -               } else {
> -                       port->full_pbn =3D 0;
> -               }
> +       if (port->ddps && !port->input) {
> +               ret =3D drm_dp_send_enum_path_resources(mgr, mstb,
> +                                                     port);
> +               if (ret =3D=3D 1)
> +                       changed =3D true;
> +       } else {
> +               port->full_pbn =3D 0;
>         }
>
>         ret =3D drm_dp_port_set_pdt(port, new_pdt, new_mcs);
> --
> 2.44.2
>
