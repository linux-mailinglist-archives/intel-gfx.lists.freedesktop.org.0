Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E52BA33EF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 11:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A180110E3C9;
	Fri, 26 Sep 2025 09:52:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="E6ExbpZo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75F1210E3C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 09:52:45 +0000 (UTC)
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6E8363FBC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 09:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1758880363;
 bh=KjxkHtlh8gdhXK0J3a2nTcQMmVYIomCeNsXStovmAzs=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=E6ExbpZoCAVe+qocl5QkmKdOno4KQ5PJdM+E6SrduuQ3UmydUf07dsRD714B+hTeP
 pzQ45E8ry8VPy/h9HODRpYOnJ2B2S/GkQHstn42pwgfKZplWJRaJIbPNUWKoodh7Qr
 KDtpDoiZZoApzunROgGRy5KXy4dIFQygxxdX++iFmIzWq+FUv/AmknWxJhDwigc9oX
 hZjfgxBkn6y1Ox2wqSiwrr3cnhZ+Ah+NqMB4PVYwWRSO5Totpr4pjCwgVCXwb09zmD
 x8Ybdy5sffOC97JATJ99n73Wwup7lcvqu6zIN/ZWJRJrgb+DRzkvRpO9eefWXkd9qT
 chXS56qoEuZPw==
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-27eeb9730d9so10270245ad.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 02:52:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758880361; x=1759485161;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KjxkHtlh8gdhXK0J3a2nTcQMmVYIomCeNsXStovmAzs=;
 b=mkKrnYYP005j8tWLjotUteae0nGmmPQSBwbpCrYWy3JbFdCxpmsR+Yq3bONNl1CigX
 WjD9JPpQ7G8elBUVu3DfrKOzBGwfo7guHjZYvEP5biqNB4n6xibezk3HuaFb3fUs8K6R
 5Qmn7hr0Y2hSGg+evjYWr74uBHop7mO3Jjws2QGU7+/5gvAYDUH6LTjZVdZYMyV7oCDo
 PmhIzKvgVAkIGgUVftFLdZb9qPmns2aShoxPXq7CS8mnj91fTeSU3Tlw4Wu4HO7hXiE9
 eqbzVa2cSUKnwB6s/G1E62WI0kdmR0b4NXvvSQV0TJp0s8BmhWg/cAPY0h57/TPU+Myx
 CX5Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJ8wrOnPZVjraz79optoa+Sv39uXN0MuuyGvTaqR0wEkzPO+9CAE6y3tiBPhMCI/AJHxZ5ALjRNZw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywflb7Q0DmFZb2zpuoBrTQjOIyA3wtZGNCHMymMAkwyjPNylxc6
 MVjo1dlBd6wjSEI+qnQB9qnpbf+Kqhs9jDpcgLXwwb355lCFU7n2yQcr4aRW5PVMc2C7PO6BW+V
 EFNimutRt2cDvFzmlAxdsc3aao31T5fgPl77XOPzNVPVQyWgNiMHoLsg6jUDgug3QTbuN24Lawk
 Z1qBBAIsZyMEs82GF6sc8bmRKXUZUT0GPZN/QKmKLstu7PH4It+gkrQCvBVvmV
X-Gm-Gg: ASbGncvAaiMEw08X2UcSVqjdedmKEEhE2YzQ0qVwBOl4XzZxNxjmqM+GUqwnx09KBii
 B+tTzLFB1jAzHYjG0knvIiu98iKXAJmrSSzrVAOtMSgl9Vdy7LUKCBorWtAVm4l+rd3fgmt6cv7
 7zV1BKTP/mtE0BAgynitrz
X-Received: by 2002:a17:90b:4d06:b0:32e:749d:fcb7 with SMTP id
 98e67ed59e1d1-3342a259dc1mr6033339a91.13.1758880361605; 
 Fri, 26 Sep 2025 02:52:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG19X6EA1H4jTvN4dWxU7JwY59cVgbi9j3iHNtYFvs9tRTwaozQ+7e2npfpIa6NgiwV+5bpU1kR4Blrn0wvi64=
X-Received: by 2002:a17:90b:4d06:b0:32e:749d:fcb7 with SMTP id
 98e67ed59e1d1-3342a259dc1mr6033303a91.13.1758880361055; Fri, 26 Sep 2025
 02:52:41 -0700 (PDT)
MIME-Version: 1.0
References: <20250926085401.2808634-1-aaron.ma@canonical.com>
 <20250926085401.2808634-2-aaron.ma@canonical.com>
 <DM3PPF208195D8DD3E38CF770DE7A86EFB9E31EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DD3E38CF770DE7A86EFB9E31EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
From: Aaron Ma <aaron.ma@canonical.com>
Date: Fri, 26 Sep 2025 17:52:30 +0800
X-Gm-Features: AS18NWC6usbrrUqzksFFGYtVP1qOZ-zX_mvOsIOG8F6S9mHmeRBbjWjSAl71ZfE
Message-ID: <CAJ6xRxU1B0wh9eNO8x62+HH_SS_H-eR-Sco9cAeH9fKrTQ+kMw@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/i915/backlight: Add get brightness support of
 DPCD via AUX
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, 
 "mripard@kernel.org" <mripard@kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>, 
 "airlied@gmail.com" <airlied@gmail.com>, "simona@ffwll.ch" <simona@ffwll.ch>, 
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Deak, Imre" <imre.deak@intel.com>, 
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>
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

On Fri, Sep 26, 2025 at 5:26=E2=80=AFPM Kandpal, Suraj <suraj.kandpal@intel=
.com> wrote:
>
> > Subject: [PATCH 2/2] drm/i915/backlight: Add get brightness support of =
DPCD
> > via AUX
> >
> > Use drm common helper to read brightness from both luminance and AUX
> > mode to support get_brightness from DPCD via AUX.
> >
> > Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 20 ++++++-------------
> >  1 file changed, 6 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 0a3a3f6a5f9d8..0ee6fd0f41ef0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -454,24 +454,16 @@ static u32 intel_dp_aux_vesa_get_backlight(struct
> > intel_connector *connector, en  {
> >       struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder)=
;
> >       struct intel_panel *panel =3D &connector->panel;
> > -     u8 buf[3];
> > -     u32 val =3D 0;
> > -     int ret;
> >
> > -     if (panel->backlight.edp.vesa.luminance_control_support) {
> > -             ret =3D drm_dp_dpcd_read(&intel_dp->aux,
> > DP_EDP_PANEL_TARGET_LUMINANCE_VALUE, buf,
> > -                                    sizeof(buf));
> > -             if (ret < 0) {
> > -                     drm_err(intel_dp->aux.drm_dev,
> > -                             "[CONNECTOR:%d:%s] Failed to read
> > Luminance from DPCD\n",
> > -                             connector->base.base.id, connector-
> > >base.name);
> > -                     return 0;
> > -             }
> > +     if (!panel->backlight.edp.vesa.info.aux_set) {
> > +             u32 pwm_level =3D panel->backlight.pwm_funcs->get(connect=
or,
> > unused);
> >
> > -             val |=3D buf[0] | buf[1] << 8 | buf[2] << 16;
> > -             return val / 1000;
> > +             return intel_backlight_level_from_pwm(connector,
> > pwm_level);
> >       }
> >
> > +     connector->panel.backlight.level =3D
> > +             drm_edp_backlight_get_level(&intel_dp->aux,
> > +&panel->backlight.edp.vesa.info);
> > +
>
> Just call the intel_dp_aux_vesa_get_backlight here and call the drm_edp_b=
acklight get level in there
>

Do you mean no call of  pwm get?

I thought it should be aligned with set_level when aux_set =3D=3D 0.

Thanks,
Aaron

> Regards,
> Suraj Kandpal
>
>
> >       return connector->panel.backlight.level;  }
> >
> > --
> > 2.43.0
>
