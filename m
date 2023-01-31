Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4421268398A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 23:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E8410E2BA;
	Tue, 31 Jan 2023 22:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5BE10E2BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 22:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675205235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UU+po2gSozeUGvjRNj1UoVZcqK0xmsDSucyFXodCFGs=;
 b=PEzUMR9DJ897C1kW9cQ188MxiE9pfKVl3WCytj4yVB0qHvUWlWkJ7CuuWTaNJmKPvClG4V
 n4W3zXljO6ZWsgHWJu3s7/WCvXloHowLvFqr9BJO5+VjQna/zcFQbpwlkSQCuThavPcSdc
 dB51ZDZ1fBkHT/tNDIyw6ZnAF3UX72k=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-438-4B28PqJKOtqfLCimnbi5Uw-1; Tue, 31 Jan 2023 17:47:13 -0500
X-MC-Unique: 4B28PqJKOtqfLCimnbi5Uw-1
Received: by mail-qt1-f197.google.com with SMTP id
 w15-20020ac8718f000000b003b86db4ea0aso3117826qto.18
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 14:47:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2zOVK4eWAasn4KbjL5g7xJvltWueortzH/DmlRVUmtc=;
 b=KIGRX4p3KWrnF0ZQNEBJAEdFn3H9SCurZPc0CN6Z2g23xMIQH+H2dHk29/YZpS4hkb
 JK5QJtlA/ye7MQPly2jSOYi3NUTaXQg4ZRnaJLazp/50+LDKQALPwrawSCDZaT+sN2kU
 JA4fkOQepWSFZYR/kiR2RfkeEADYYm8pGODiqjfN9gl4rPL7OATymPck4Qr9xvXMRpjE
 QlN4Rg8qxULM024CLyOuwwcBgAuKltFMxdsMlK3PUinSUOY1eTex0snJXZ8qxydhYjzt
 QIkA9wHIfCtcW471hyK5ezX5wj9XZGNFj2kNNmUkRuUx2yeM2U2WBzEcbnvViF+SUrxJ
 JYHA==
X-Gm-Message-State: AO0yUKU5QohONOMMvHx5qEJjE6Pl8qsoBT4o11fdxlf6qSnHsxb1m5iF
 reXE8dpiR4z1WgF3uIuXIqIvtqUNNoG4/gquIgyXlKInlpioRvIB3Bbu1xf/kqxrz+FExW/WsWW
 GFuqOuXhaAaMsF06Y+EkIQjGMGlMV
X-Received: by 2002:a05:622a:11d4:b0:3b9:a5d8:2c4d with SMTP id
 n20-20020a05622a11d400b003b9a5d82c4dmr598196qtk.53.1675205233409; 
 Tue, 31 Jan 2023 14:47:13 -0800 (PST)
X-Google-Smtp-Source: AK7set/vsb24iJAqFjVPlt0CK9XFEWkzad8J54148EFGoGZD5L7ZAAqu79IWkUIr90efBBsO/taFnQ==
X-Received: by 2002:a05:622a:11d4:b0:3b9:a5d8:2c4d with SMTP id
 n20-20020a05622a11d400b003b9a5d82c4dmr598162qtk.53.1675205233055; 
 Tue, 31 Jan 2023 14:47:13 -0800 (PST)
Received: from ?IPv6:2600:4040:5c68:6800::feb? ([2600:4040:5c68:6800::feb])
 by smtp.gmail.com with ESMTPSA id
 bi32-20020a05620a31a000b006b95b0a714esm11142259qkb.17.2023.01.31.14.47.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Jan 2023 14:47:12 -0800 (PST)
Message-ID: <4add821aebae4f796a808d9dfe9ad85e83cac128.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 17:47:11 -0500
In-Reply-To: <20230131150548.1614458-17-imre.deak@intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
 <20230131150548.1614458-17-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 16/17] drm/i915/dp_mst: Add workaround
 for a DELL P2715Q payload allocation problem
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

On Tue, 2023-01-31 at 17:05 +0200, Imre Deak wrote:
> The DELL P2715Q monitor's MST hub has a payload allocation problem,

LMAO hello yet again, Dell P2715Q. It's been a while.

> where the VCPI used to reserve the last two time slots (at position
> 0x3e, 0x3f) in the hub's payload table, this VCPI can't be reused for
> later payload configurations.
>=20
> The problem results at least in streams reusing older VCPIs to stay
> blank on the screen and the payload table containing bogus VCPIs
> (repeating the one earlier used to reserve the 0x3e, 0x3f slots) after
> the last reservered slot.

WOW. you know I've been trying for ages to figure out what is up with this
exact monitor and I think I just gave up because it's the only monitor I've
ever seen do this.

(Also yes, I do have two of this exact monitor. I think we even have this
model mentioned in our testcases. I looked up a google photo of it just to
confirm. I think ours is the P2715Qb, but it looks identical and the proble=
m
you're describing sounds identical as well).

This patch looks fine to me, we could probably also put this in the MST
helpers as well if you can think of a way to do that and I can handle testi=
ng
it on nouveau/amdgpu, but this is basically the only monitor I've ever seen=
 do
this - so I don't think it's a big deal either way.

either way:

Reviewed-by: Lyude Paul <lyude@redhat.com>

>=20
> To work around the problem detect this monitor and the condition for the
> problem (when the last two slots get allocated in a commit), force a
> full modeset of the MST topology in the subsequent commit and reset the
> payload table during the latter commit after all payloads have been
> freed.
>=20
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   | 13 +++--
>  drivers/gpu/drm/i915/display/intel_atomic.h   |  3 +-
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  5 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 48 +++++++++++++++++--
>  5 files changed, 61 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 0f1c5b9c9a826..04e5f0e0fffa6 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -616,7 +616,8 @@ intel_atomic_get_crtc_state(struct drm_atomic_state *=
state,
>  }
> =20
>  static int modeset_pipe(struct intel_atomic_state *state,
> -=09=09=09struct intel_crtc *crtc, const char *reason)
> +=09=09=09struct intel_crtc *crtc, const char *reason,
> +=09=09=09bool allow_fastset)
>  {
>  =09struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  =09struct intel_crtc_state *crtc_state;
> @@ -629,6 +630,8 @@ static int modeset_pipe(struct intel_atomic_state *st=
ate,
>  =09=09return PTR_ERR(crtc_state);
> =20
>  =09crtc_state->uapi.mode_changed =3D true;
> +=09if (!allow_fastset)
> +=09=09crtc_state->uapi.connectors_changed =3D true;
>  =09crtc_state->update_pipe =3D false;
> =20
>  =09return intel_atomic_add_affected_planes(state, crtc);
> @@ -639,6 +642,7 @@ static int modeset_pipe(struct intel_atomic_state *st=
ate,
>   * @state: atomic state
>   * @connector: connector to add the state for
>   * @reason: the reason why the connector needs to be added
> + * @allow_fastset: allow a fastset
>   *
>   * Add the @connector to the atomic state with its CRTC state and force =
a modeset
>   * on the CRTC if any.
> @@ -648,7 +652,8 @@ static int modeset_pipe(struct intel_atomic_state *st=
ate,
>   * Returns 0 in case of success, a negative error code on failure.
>   */
>  int intel_atomic_modeset_connector(struct intel_atomic_state *state,
> -=09=09=09=09   struct intel_connector *connector, const char *reason)
> +=09=09=09=09   struct intel_connector *connector, const char *reason,
> +=09=09=09=09   bool allow_fastset)
>  {
>  =09struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  =09struct drm_connector_state *conn_state;
> @@ -671,7 +676,7 @@ int intel_atomic_modeset_connector(struct intel_atomi=
c_state *state,
>  =09if (ret)
>  =09=09return ret;
> =20
> -=09return modeset_pipe(state, crtc, reason);
> +=09return modeset_pipe(state, crtc, reason, allow_fastset);
>  }
> =20
>  /**
> @@ -700,7 +705,7 @@ int intel_atomic_modeset_pipe(struct intel_atomic_sta=
te *state,
>  =09if (ret)
>  =09=09return ret;
> =20
> -=09return modeset_pipe(state, crtc, reason);
> +=09return modeset_pipe(state, crtc, reason, true);
>  }
> =20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 84295d388e3cb..7778aea8a09fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -59,7 +59,8 @@ int intel_atomic_setup_scalers(struct drm_i915_private =
*dev_priv,
>  int intel_atomic_modeset_pipe(struct intel_atomic_state *state,
>  =09=09=09      struct intel_crtc *crtc, const char *reason);
>  int intel_atomic_modeset_connector(struct intel_atomic_state *state,
> -=09=09=09=09   struct intel_connector *connector, const char *reason);
> +=09=09=09=09   struct intel_connector *connector, const char *reason,
> +=09=09=09=09   bool allow_fastset);
>  int intel_atomic_modeset_all_pipes(struct intel_atomic_state *state,
>  =09=09=09=09   const char *reason);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 9ccae7a460200..06d51d2b5e0d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1656,6 +1656,7 @@ struct intel_dp {
>  =09bool has_audio;
>  =09bool reset_link_params;
>  =09bool use_max_params;
> +=09bool mst_reset_payload_table;
>  =09u8 dpcd[DP_RECEIVER_CAP_SIZE];
>  =09u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
>  =09u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d6b0ef38f6563..c157bcd976103 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4689,6 +4689,8 @@ intel_dp_detect(struct drm_connector *connector,
>  =09=09memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
>  =09=09memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> =20
> +=09=09intel_dp->mst_reset_payload_table =3D false;
> +
>  =09=09if (intel_dp->is_mst) {
>  =09=09=09drm_dbg_kms(&dev_priv->drm,
>  =09=09=09=09    "MST device may have disappeared %d vs %d\n",
> @@ -4924,7 +4926,8 @@ static int intel_modeset_tile_group(struct intel_at=
omic_state *state,
>  =09=09=09continue;
> =20
>  =09=09ret =3D intel_atomic_modeset_connector(state, connector,
> -=09=09=09=09=09=09     "connector tile group");
> +=09=09=09=09=09=09     "connector tile group",
> +=09=09=09=09=09=09     true);
>  =09=09if (ret)
>  =09=09=09break;
>  =09}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 08222fc6c5ecd..a9bb339e41987 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -422,9 +422,10 @@ intel_dp_mst_atomic_master_trans_check(struct intel_=
connector *connector,
>  =09struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  =09struct drm_connector_list_iter connector_list_iter;
>  =09struct intel_connector *connector_iter;
> +=09bool reset_payload_table =3D connector->mst_port->mst_reset_payload_t=
able;
>  =09int ret =3D 0;
> =20
> -=09if (DISPLAY_VER(dev_priv) < 12)
> +=09if (DISPLAY_VER(dev_priv) < 12 && !reset_payload_table)
>  =09=09return  0;
> =20
>  =09if (!intel_connector_needs_modeset(state, &connector->base))
> @@ -437,7 +438,8 @@ intel_dp_mst_atomic_master_trans_check(struct intel_c=
onnector *connector,
>  =09=09=09continue;
> =20
>  =09=09ret =3D intel_atomic_modeset_connector(state, connector_iter,
> -=09=09=09=09=09=09     "MST master transcoder");
> +=09=09=09=09=09=09     "MST master transcoder",
> +=09=09=09=09=09=09     !reset_payload_table);
>  =09=09if (ret)
>  =09=09=09break;
>  =09}
> @@ -531,6 +533,41 @@ static void intel_mst_disable_dp(struct intel_atomic=
_state *state,
>  =09intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  }
> =20
> +static void detect_payload_allocation_bug(const struct drm_dp_mst_topolo=
gy_state *mst_state,
> +=09=09=09=09=09  const struct intel_connector *connector,
> +=09=09=09=09=09  struct intel_dp *intel_dp)
> +{
> +=09struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
> +=09if (!drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_MST_PAYLOAD_TABL=
E_RESET_WA))
> +=09=09return;
> +
> +=09if (drm_dp_mst_allocated_time_slots(mst_state) < DP_PAYLOAD_TABLE_SIZ=
E - 2)
> +=09=09return;
> +
> +=09drm_dbg(&i915->drm,
> +=09=09"[CONNECTOR:%d:%s] Payload table allocation bug detected\n",
> +=09=09connector->base.base.id, connector->base.name);
> +
> +=09intel_dp->mst_reset_payload_table =3D true;
> +}
> +
> +static void payload_allocation_bug_wa(const struct intel_connector *conn=
ector,
> +=09=09=09=09      struct intel_dp *intel_dp)
> +{
> +=09struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
> +=09if (!intel_dp->mst_reset_payload_table)
> +=09=09return;
> +
> +=09drm_dbg(&i915->drm,
> +=09=09"[CONNECTOR:%d:%s] Resetting payload table due to allocation bug\n=
",
> +=09=09connector->base.base.id, connector->base.name);
> +
> +=09drm_dp_mst_reset_payload_table(&intel_dp->mst_mgr);
> +=09intel_dp->mst_reset_payload_table =3D false;
> +}
> +
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  =09=09=09=09      struct intel_encoder *encoder,
>  =09=09=09=09      const struct intel_crtc_state *old_crtc_state,
> @@ -594,10 +631,13 @@ static void intel_mst_post_disable_dp(struct intel_=
atomic_state *state,
> =20
> =20
>  =09intel_mst->connector =3D NULL;
> -=09if (last_mst_stream)
> +=09if (last_mst_stream) {
>  =09=09dig_port->base.post_disable(state, &dig_port->base,
>  =09=09=09=09=09=09  old_crtc_state, NULL);
> =20
> +=09=09payload_allocation_bug_wa(connector, intel_dp);
> +=09}
> +
>  =09drm_dbg_kms(&dev_priv->drm, "active links %d\n",
>  =09=09    intel_dp->active_mst_links);
>  }
> @@ -662,6 +702,8 @@ static void intel_mst_pre_enable_dp(struct intel_atom=
ic_state *state,
>  =09=09drm_err(&dev_priv->drm, "Failed to create MST payload for %s: %d\n=
",
>  =09=09=09connector->base.name, ret);
> =20
> +=09detect_payload_allocation_bug(mst_state, connector, intel_dp);
> +
>  =09/*
>  =09 * Before Gen 12 this is not done as part of
>  =09 * dig_port->base.pre_enable() and should be done here. For

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

