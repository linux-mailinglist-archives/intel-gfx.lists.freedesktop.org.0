Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DC3683AA0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 00:43:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864F710E07C;
	Tue, 31 Jan 2023 23:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6DE10E07C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 23:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675208625;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sU5PPBOoW0GhzwD6aVJ7/ncuYYoKZGWTUBGYaZyfV74=;
 b=K+0TFTqUutrA0wux1zZPziUZtftxV58BPpssFnKOsBJh2PJmsK5sFEqe+MkYbQAXKipkGE
 BkkU4zcBuXU73F/CjaqazonnwfTzXJ/2MNUmEDUDWOdVmkoTMovQNmFhpPqLf881u37J74
 UwPLlhnp5sS8keGMwGkXXbR7xeHlAYQ=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-80-GmuGfYTgPqCGtz9fp3FoHg-1; Tue, 31 Jan 2023 18:43:43 -0500
X-MC-Unique: GmuGfYTgPqCGtz9fp3FoHg-1
Received: by mail-qt1-f200.google.com with SMTP id
 m7-20020ac807c7000000b003b80b35c136so7342253qth.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:43:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8dzn7Rsuz0kk9nTcqct2VfYtOO/cXLsfNkHZ95aUQ2g=;
 b=6EOOW5VQ6z1SIr4KuFa59pI304G+7b5EB+ddsVb6huVjZ7iCzncgB9GTjWLZUxWt4a
 Iyq03k6WAnBPPovljJxfDttsccv2JG/0GweOV40ONRkX8NXCvzSRV+Wf4W5brMkYn0Cf
 BCSVGz2wt1VtWxs/cLqXPLaaoE7N7Xy/FLY5dk7q9arxd5p6HUPYOUUWLphyfcRkkndG
 dDBgBBTjFCadYhRkmWiafGuun8HymPSbpa+v6EXpumSywb9r+zvWeYaUh/iSZ2c2jJRp
 KAXaa+XuiVLKMOqP+2xwpBnesL4UOpT/h1CuUX7yvih0m1V/pWdPxWB3zY3kFnzo2R/v
 Oq3g==
X-Gm-Message-State: AO0yUKW2EROziB4+D8DRm6PiZbuCcVohQiJD/QH5wTR3Oc5VfSjgce7k
 +NCjdHc9USiykI8mZI8bcTH2GDYX/fhYPAwOAue1ZP/7SsjzzsiimHK8P+6Lmyy7tepzfMnEP/t
 WLMP+n+fad1RE4rJF3saT/CxXf4hc
X-Received: by 2002:a05:622a:1786:b0:3b8:2eca:e6a5 with SMTP id
 s6-20020a05622a178600b003b82ecae6a5mr941852qtk.29.1675208622879; 
 Tue, 31 Jan 2023 15:43:42 -0800 (PST)
X-Google-Smtp-Source: AK7set/adU7jbCJYnrbGIgpvQCFyiplIj5aHqNm8N9YTLQRitZm75MzWYj2HyPyrVAMgC/7pIBlKIQ==
X-Received: by 2002:a05:622a:1786:b0:3b8:2eca:e6a5 with SMTP id
 s6-20020a05622a178600b003b82ecae6a5mr941834qtk.29.1675208622615; 
 Tue, 31 Jan 2023 15:43:42 -0800 (PST)
Received: from ?IPv6:2600:4040:5c68:6800::feb? ([2600:4040:5c68:6800::feb])
 by smtp.gmail.com with ESMTPSA id
 s24-20020ac85ed8000000b003b2d890752dsm10681398qtx.88.2023.01.31.15.43.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Jan 2023 15:43:42 -0800 (PST)
Message-ID: <1666a50f95a730dd366dcaf89239e52fcc63a6e8.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 18:43:41 -0500
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

I mentioned this once already but: really, I am genuinely impressed at this=
! I
never expected to see this monitor ever work. Also, thank you a ton for add=
ing
the payload table verification stuff here. For the whole series:

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Tue, 2023-01-31 at 17:05 +0200, Imre Deak wrote:
> The DELL P2715Q monitor's MST hub has a payload allocation problem,
> where the VCPI used to reserve the last two time slots (at position
> 0x3e, 0x3f) in the hub's payload table, this VCPI can't be reused for
> later payload configurations.
>=20
> The problem results at least in streams reusing older VCPIs to stay
> blank on the screen and the payload table containing bogus VCPIs
> (repeating the one earlier used to reserve the 0x3e, 0x3f slots) after
> the last reservered slot.
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

