Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 747736CCB38
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 22:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB4110E9DD;
	Tue, 28 Mar 2023 20:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C489510E9DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 20:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680034180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yK2cTA5q4Nfc8vKHAw1WbIYaanBBsDzhnNJNFr/v03o=;
 b=QVnDyuB2Er61WAR5L9lO3WsO4v4jzeJ3GRutmdXjnfk14zFfixXekzd3GF72WQaQkIQFqx
 M3nDviflugu/a8Nt8lj440Wjq1MckvqHsftPdqUY5zApbvsp5gL7AUl8Ek0DK2zaCnAEWU
 co4YZ1jNxTQJxlaipkOs7yDZ6vxZxR0=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-622-dELYqT6zOFmF_O0IlEDR-w-1; Tue, 28 Mar 2023 16:09:36 -0400
X-MC-Unique: dELYqT6zOFmF_O0IlEDR-w-1
Received: by mail-qk1-f197.google.com with SMTP id
 195-20020a3705cc000000b00746a3ab9426so6218540qkf.20
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 13:09:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680034175;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=E3ViBLrQstoIszMf9vlxgWcAdqanW9ooiBnc3wbNkBI=;
 b=XImF3hMSIVH37wfpqOvaL46ZOddxkM6/sW/KHNBX4p03mOI7+wVYWdHKbVyT4/Tqrq
 vLH2B/wcDpd0ol5aSBg/Tf+vKEt1+vZZNXNUYHhp0lSy86cy9t8ivKwOdGrywKZKgfF+
 2ZOoGBqhx7OXyNbpDl1FlOqDic1H49WhjzzbMnsAnLFxIVIAdTwbnofv3yggStNO4K0z
 KcEv36X4vVzGumJYNFYPIhxdqSZjY1u1rwjUILR+mb+Vic9LF8s6kS7CerdSSbn0VGHQ
 yCEsDbN/0OEyboih4ieeRx4FZ4hLD77H6HBp7htkFhMI3eVzOzqIIQnBafSZ/6WVgCZ1
 GJpA==
X-Gm-Message-State: AAQBX9eGfDO1FAoWJgMGaJ3U/O1OL3AsduryAUCRV+iE6NZ0Bnrimjbw
 5XcUhZ2xaMXbryfPV4Vbyd0n86/qMM9t+kiTTRbV7fFUFsdpidxd9vNEvwVXU/pFbnTKrOMfvAy
 MiS4egdaEaOnwqP2nYP2DmKhPFeb0ptzbdRvF
X-Received: by 2002:a05:6214:248f:b0:5cd:d042:263a with SMTP id
 gi15-20020a056214248f00b005cdd042263amr27609463qvb.51.1680034174958; 
 Tue, 28 Mar 2023 13:09:34 -0700 (PDT)
X-Google-Smtp-Source: AKy350Y+RO43i9OdXjza249uNCPI5P7b2MC+lObCQRC9iy04p3oZBWYpTKrxqo1G2dNKQDCizmnrAQ==
X-Received: by 2002:a05:6214:248f:b0:5cd:d042:263a with SMTP id
 gi15-20020a056214248f00b005cdd042263amr27609436qvb.51.1680034174710; 
 Tue, 28 Mar 2023 13:09:34 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c57:b700::feb? ([2600:4040:5c57:b700::feb])
 by smtp.gmail.com with ESMTPSA id
 q6-20020a37f706000000b0074235386738sm4583567qkj.37.2023.03.28.13.09.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 13:09:34 -0700 (PDT)
Message-ID: <02587a9825173367ef41b1409512e80df8818cf7.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 16:09:33 -0400
In-Reply-To: <20230220164718.23117-1-ville.syrjala@linux.intel.com>
References: <20230220164718.23117-1-ville.syrjala@linux.intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Get HDR DPCD refresh timeout from
 VBT
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

BTW - I just started catching up with my email, is this waiting on me or wa=
s
someone else able to review it?

On Mon, 2023-02-20 at 18:47 +0200, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Grab the HDR DPCD refresh timeout (time we need to wait after
> writing the sourc OUI before the HDR DPCD registers are ready)
> from the VBT.
>=20
> Windows doesn't even seem to have any default value for this,
> which is perhaps a bit weird since the VBT value is documented
> as TGL+ and I thought the HDR backlight stuff might already be
> used on earlier platforms. To play it safe I left the old
> hardcoded 30ms default in place. Digging through some internal
> stuff that seems to have been a number given by the vendor for
> one particularly slow TCON. Although I did see 50ms mentioned
> somewhere as well.
>=20
> Let's also include the value in the debug print to ease
> debugging, and toss in the customary connector id+name as well.
>=20
> The TGL Thinkpad T14 I have sets this to 0 btw. So the delay
> is now gone on this machine:
>  [CONNECTOR:308:eDP-1] Detected Intel HDR backlight interface version 1
>  [CONNECTOR:308:eDP-1] Using Intel proprietary eDP backlight controls
>  [CONNECTOR:308:eDP-1] SDR backlight is controlled through PWM
>  [CONNECTOR:308:eDP-1] Using native PCH PWM for backlight control (contro=
ller=3D0)
>  [CONNECTOR:308:eDP-1] Using AUX HDR interface for backlight control (ran=
ge 0..496)
>  [CONNECTOR:308:eDP-1] Performing OUI wait (0 ms)
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c          | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c            | 9 +++++++--
>  3 files changed, 14 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index f35ef3675d39..f16887aed56d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1084,6 +1084,12 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  =09=09panel->vbt.backlight.min_brightness =3D entry->min_brightness;
>  =09}
> =20
> +=09if (i915->display.vbt.version >=3D 239)
> +=09=09panel->vbt.backlight.hdr_dpcd_refresh_timeout =3D
> +=09=09=09DIV_ROUND_UP(backlight_data->hdr_dpcd_refresh_timeout[panel_typ=
e], 100);
> +=09else
> +=09=09panel->vbt.backlight.hdr_dpcd_refresh_timeout =3D 30;
> +
>  =09drm_dbg_kms(&i915->drm,
>  =09=09    "VBT backlight PWM modulation frequency %u Hz, "
>  =09=09    "active %s, min brightness %u, level %u, controller %u\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 748b0cd411fa..76f47ba3be45 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -326,6 +326,7 @@ struct intel_vbt_panel_data {
>  =09struct {
>  =09=09u16 pwm_freq_hz;
>  =09=09u16 brightness_precision_bits;
> +=09=09u16 hdr_dpcd_refresh_timeout;
>  =09=09bool present;
>  =09=09bool active_low_pwm;
>  =09=09u8 min_brightness;=09/* min_brightness/255 of max */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index b77bd4565864..3734e7567230 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2293,10 +2293,15 @@ intel_edp_init_source_oui(struct intel_dp *intel_=
dp, bool careful)
> =20
>  void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
>  {
> +=09struct intel_connector *connector =3D intel_dp->attached_connector;
>  =09struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> =20
> -=09drm_dbg_kms(&i915->drm, "Performing OUI wait\n");
> -=09wait_remaining_ms_from_jiffies(intel_dp->last_oui_write, 30);
> +=09drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Performing OUI wait (%u ms=
)\n",
> +=09=09    connector->base.base.id, connector->base.name,
> +=09=09    connector->panel.vbt.backlight.hdr_dpcd_refresh_timeout);
> +
> +=09wait_remaining_ms_from_jiffies(intel_dp->last_oui_write,
> +=09=09=09=09       connector->panel.vbt.backlight.hdr_dpcd_refresh_timeo=
ut);
>  }
> =20
>  /* If the device supports it, try to set the power state appropriately *=
/

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

