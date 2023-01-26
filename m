Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B92167D66D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 21:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A8089349;
	Thu, 26 Jan 2023 20:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2AF89349
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 20:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674764999;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KY8noH1hma21blOuwjmZfr6DMghgn7PG9MGBAwj2ZTQ=;
 b=hPSQHnM1kqHpaoiyQzmFDQe2SyGeDnaOZnM4U5mZJ/TB6968y9b0fOzornH6B7NPmTE1wf
 ekAieZSwYvzy4smGsedFOXEXUIcJowukYzvUPWv5aiLoG4ryGgH//sNWRKSYTTusqC35q9
 gnz8oCwyBgdbPGnnRnwXk5PRPa9TtDQ=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-652-VJSTZ6zINgGqK5L92jIokw-1; Thu, 26 Jan 2023 15:29:58 -0500
X-MC-Unique: VJSTZ6zINgGqK5L92jIokw-1
Received: by mail-qv1-f69.google.com with SMTP id
 l6-20020ad44446000000b00537721bfd2dso1695723qvt.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 12:29:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=byAmqBKql90Eqj1B9LX0em0qmfqjPBR2a/BeudYh0iM=;
 b=vqcFmBoKNnu6pN5xVYdI5mFYuJNbnQuhN02pYgmQSlcPTfHEE+dOsCi/cIPDC87dsm
 lLiY8RX8oV3T6zY3i+DDaxqstDmltNri520ay167OoqTgN7AmrHXrrVefgnWrJVLd05Z
 8+4FYzj9G4JawqOeYF1RZUMgAcdUpR5eF42Bfi8LEbcSgDjGTcpouiCJH7P56BoqcIht
 WnTEnnXH9JxoV+2AOEvwbp3sO7gYSBt9eIHdjLhcF7QYpT0zevsLYAXUwFfNxU5u23hQ
 qiboEL7799S7uk+UrdqU8fGX2EbCAszJGC2arxpF9y4PlgSUFXNOPEzZ4HT1Jbltb4a/
 jLtw==
X-Gm-Message-State: AFqh2kqiwFXS9CqDnq8hifiKVxQqXUraZG5QGMUAQNjXK7ZK1Wc7HpVO
 PaPe9ip+UvnfyQfCp6+I5Ng3Mp5t6GoQxzCcqteFFVEEkcMx2+qInXM9SIHH3GwYrYoeDa0XHgH
 nXf65yC3WHKAlXAXkWkjZdAyaGwhH
X-Received: by 2002:ac8:7602:0:b0:3a9:8c90:dcd6 with SMTP id
 t2-20020ac87602000000b003a98c90dcd6mr49257231qtq.51.1674764997326; 
 Thu, 26 Jan 2023 12:29:57 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsHNl6VGePA09F6lPINX6N6zYEQNSpkAMn6j530HCOs9fTXHwyiEct/7i0IOag9evFq/Mfg4Q==
X-Received: by 2002:ac8:7602:0:b0:3a9:8c90:dcd6 with SMTP id
 t2-20020ac87602000000b003a98c90dcd6mr49257205qtq.51.1674764997030; 
 Thu, 26 Jan 2023 12:29:57 -0800 (PST)
Received: from ?IPv6:2600:4040:5c68:6800::feb? ([2600:4040:5c68:6800::feb])
 by smtp.gmail.com with ESMTPSA id
 n3-20020a05620a294300b00704df12317esm1569630qkp.24.2023.01.26.12.29.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jan 2023 12:29:56 -0800 (PST)
Message-ID: <cf6f73e4a30745a9c1ec4f5b5e10e064de60c7da.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 26 Jan 2023 15:29:55 -0500
In-Reply-To: <20230126091310.1154148-1-imre.deak@intel.com>
References: <20230125114852.748337-2-imre.deak@intel.com>
 <20230126091310.1154148-1-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/dp_mst: Add the MST
 topology state for modesetted CRTCs
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi! should have a chance to look at this at the start of next week

On Thu, 2023-01-26 at 11:13 +0200, Imre Deak wrote:
> Add the MST topology for a CRTC to the atomic state if the driver
> needs to force a modeset on the CRTC after the encoder compute config
> functions are called.
>=20
> Later the MST encoder's disable hook also adds the state, but that isn't
> guaranteed to work (since in that hook getting the state may fail, which
> can't be handled there). This should fix that, while a later patch fixes
> the use of the MST state in the disable hook.
>=20
> v2: Add missing forward struct declartions, caught by hdrtest.
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: stable@vger.kernel.org # 6.1
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  4 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 37 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.h  |  4 +++
>  3 files changed, 45 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 717ca3d7890d3..d3994e2a7d636 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5934,6 +5934,10 @@ int intel_modeset_all_pipes(struct intel_atomic_st=
ate *state,
>  =09=09if (ret)
>  =09=09=09return ret;
> =20
> +=09=09ret =3D intel_dp_mst_add_topology_state_for_crtc(state, crtc);
> +=09=09if (ret)
> +=09=09=09return ret;
> +
>  =09=09ret =3D intel_atomic_add_affected_planes(state, crtc);
>  =09=09if (ret)
>  =09=09=09return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 8b0e4defa3f10..ba29c294b7c1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1223,3 +1223,40 @@ bool intel_dp_mst_is_slave_trans(const struct inte=
l_crtc_state *crtc_state)
>  =09return crtc_state->mst_master_transcoder !=3D INVALID_TRANSCODER &&
>  =09       crtc_state->mst_master_transcoder !=3D crtc_state->cpu_transco=
der;
>  }
> +
> +/**
> + * intel_dp_mst_add_topology_state_for_crtc - add MST topology state for=
 a CRTC
> + * @state: atomic state
> + * @crtc: CRTC
> + *
> + * Add the MST topology state for @crtc to @state.
> + *
> + * Returns 0 on success, negative error code on failure.
> + */
> +int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *=
state,
> +=09=09=09=09=09     struct intel_crtc *crtc)
> +{
> +=09struct drm_connector *_connector;
> +=09struct drm_connector_state *conn_state;
> +=09int i;
> +
> +=09for_each_new_connector_in_state(&state->base, _connector, conn_state,=
 i) {
> +=09=09struct drm_dp_mst_topology_state *mst_state;
> +=09=09struct intel_connector *connector =3D to_intel_connector(_connecto=
r);
> +
> +=09=09if (conn_state->crtc !=3D &crtc->base)
> +=09=09=09continue;
> +
> +=09=09if (!connector->mst_port)
> +=09=09=09continue;
> +
> +=09=09mst_state =3D drm_atomic_get_mst_topology_state(&state->base,
> +=09=09=09=09=09=09=09      &connector->mst_port->mst_mgr);
> +=09=09if (IS_ERR(mst_state))
> +=09=09=09return PTR_ERR(mst_state);
> +
> +=09=09mst_state->pending_crtc_mask |=3D drm_crtc_mask(&crtc->base);
> +=09}
> +
> +=09return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.h
> index f7301de6cdfb3..f1815bb722672 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -8,6 +8,8 @@
> =20
>  #include <linux/types.h>
> =20
> +struct intel_atomic_state;
> +struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_dp;
> @@ -18,5 +20,7 @@ int intel_dp_mst_encoder_active_links(struct intel_digi=
tal_port *dig_port);
>  bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_st=
ate);
>  bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_sta=
te);
>  bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
> +int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *=
state,
> +=09=09=09=09=09     struct intel_crtc *crtc);
> =20
>  #endif /* __INTEL_DP_MST_H__ */

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

