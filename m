Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E497FBA3434
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 11:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194C510EA11;
	Fri, 26 Sep 2025 09:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="CBR80uS7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9308910EA2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 09:59:24 +0000 (UTC)
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 005AE3FBC0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 09:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1758880763;
 bh=350VeDxgfRzXgflq2lnUg0l0m2Mq6vHjpQfWXsnz/ko=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=CBR80uS7GfQEo6kVMXfozqxxeCtD9oQoU7A4Fj5Ck81nF5P2R5+0iLZR2Cfkr3cEx
 x4rORBD3udGrfbtPOwWfpXaOipp6rSjTfYsA6waQzOK2q8S4ATrt6hIheQkcPpfJ6n
 Kh0Z3gVC1Oy8AM0CZKeohXYxcL1qY1NCsuW64ZcJ9x7rC7DkxA8ZGK/rrXNgq2OCgb
 hqsBC4LJLVOBAQrvU4JvObUzY16cQtD2Rj74nh1uXwfS5ZKcI+aoxDTXRa9DWVcyGY
 BToHaeBkgyoyyOKOzmM9xqU1qvJBm7+EqRQEBA79hqzA0Py/hPH4qWAKynvmPV2Lkw
 UE6MJbuNN0ejw==
Received: by mail-pj1-f70.google.com with SMTP id
 98e67ed59e1d1-3352a336ee1so1423912a91.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 02:59:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758880761; x=1759485561;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=350VeDxgfRzXgflq2lnUg0l0m2Mq6vHjpQfWXsnz/ko=;
 b=KuS4vU0KFdMrnEE7x34hz3fab/L5XGnlqWPAmEx2nAHIibME7UVapsiyApPAtyesk6
 lpGy4hehig4pXBE2Nsk9iy3g2Zgb8zmZgd+Zdd8RGkvPa0LDimfOQvsY+6STsC2sJ1Kn
 kNmymC16v8MThDyMjAW1d4lMIdW+bU4RTuZ6EMnz/QRmzZdxecITr1TrzdRRRXU4Mbmd
 Xc4tsZ/JR/pwZzdxzUWil/j+HSjJeg/Z5sIkGgjDgMw6hdNqGctN8JWiu9+yBiNFXp07
 KPGLNzoc5fr/3aYmayDO7vmyRejtbhUBFcLgA0FiDQ6lQliV7dstqGlXBKNW7+fx9lZf
 9Ecw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWET4d3LIFn6rcNXASFReP2QaxOwZVTAiVsubwWQltKMjU3TX3uaMQqILl3u/tUJhmRylf4DEeFjhs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzqNzg7QOgqGm9AYILyR+a8/0Bnf5OeFVdGHZ2kMxpuXaV7FF09
 aZLMIeCU3GNyJFfIXwCb01e0sbeVlj4k1KErcW7aUXYhCoruV1k2a1ZmW4ksYj6J4us1rCO2Oxa
 m2rt5Yjhj7YZFK7S25m1qt/pZ+71RCbvQFwOaLWfxwJgktktVPylysgv0BXdUAfzULgrgnNopny
 gULKhgF6F214tXSzuPFe1GGX0cwl/8yQa/oJk3hBWdZ/1PszD6KWfMxM4v61Nb
X-Gm-Gg: ASbGncvL3Z/jkcchpXRdNv1Y9ETlR+a57/A60MuzpnwQ2pyXlLA008zHatqHA+TCC4r
 MqRUItkBoVVDXCLvHkzujj54nqV5u/d8WFynOYV7ZaSowVKEirsLvCX1wLXOp7HSsB1EGND0+sL
 rekFVLEH1CfXJ4hdoJaSuk
X-Received: by 2002:a17:90b:17c4:b0:330:a454:c31a with SMTP id
 98e67ed59e1d1-3342a2de193mr6239484a91.32.1758880761472; 
 Fri, 26 Sep 2025 02:59:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwHfxYCmMAdDnXzz1xzC7gDImRAbMc+/4M1E6xN089S6nZHHF4iSUTTJEy3FEqIoWeau9Wq9g+mL5H1TWIxvA=
X-Received: by 2002:a17:90b:17c4:b0:330:a454:c31a with SMTP id
 98e67ed59e1d1-3342a2de193mr6239468a91.32.1758880761064; Fri, 26 Sep 2025
 02:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <20250926093832.2811200-1-aaron.ma@canonical.com>
 <20250926093832.2811200-2-aaron.ma@canonical.com>
 <DM3PPF208195D8D8D08C129F107E639D9DFE31EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D8D08C129F107E639D9DFE31EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
From: Aaron Ma <aaron.ma@canonical.com>
Date: Fri, 26 Sep 2025 17:59:10 +0800
X-Gm-Features: AS18NWDSpxhycjyvfNZbG8RzOwfSfrORKQywSHnH1d3QzIamaXH5HjekBbSRu8o
Message-ID: <CAJ6xRxV_GZDVrcDGD5h3sxYtbPGb8SstQmp0jAa7Mz96K1G33w@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/i915/backlight: Add get brightness support of
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

On Fri, Sep 26, 2025 at 5:52=E2=80=AFPM Kandpal, Suraj <suraj.kandpal@intel=
.com> wrote:
>
> > Subject: [PATCH v2 2/2] drm/i915/backlight: Add get brightness support =
of
> > DPCD via AUX
> >
> > Use drm common helper to read brightness from both luminance and AUX
> > mode to support get_brightness from DPCD via AUX.
> >
>
> The version changes need to be here
>
> Like this
>
> --v2
> <change done>

This version changes follow the guidance in Commentary of
Documentation/process/submitting-patches.rst


>
> Do not send revisions this quickly wait for a day or two before sending a=
 new version since
> Everyone isn't in the same time zone or could have simply missed your mai=
l.
>

I found the drm_err once the email sent out. so I made this change.

Aaron


> > Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> > ---
> > v1 -> v2: no changes.
>
> Aso this shouldn't be here
> This should be above your signed-off-by
> >
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
> >       return connector->panel.backlight.level;  }
> >
> > --
> > 2.43.0
>
