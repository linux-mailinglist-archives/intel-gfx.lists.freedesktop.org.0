Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BA9D02DBE
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 14:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D47610E717;
	Thu,  8 Jan 2026 13:08:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EdCJyCAJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A5510E6EB
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jan 2026 11:11:30 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id
 a640c23a62f3a-b73161849e1so548867166b.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jan 2026 03:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767870689; x=1768475489; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1BkJysBnNZhs5NyTGbETBkSrANeMxDweJaKqNNZ1pKs=;
 b=EdCJyCAJXCUPE8w0Azf5xvitR4fIuflo85tnqv/BCnEwT2zg9TxaYoAvays+9yHWwQ
 kdDKH+gsoX59Gawg23zz8Xyror5j1o/HMfJf5ljBiTQ2ASvcEhn+z6VkkYcFRftjRZLa
 kNTcDdGE8GnCuiGmnNR0qBjunGJyiQov62BoT+qAAriSxUSwyNEGdAUe5C/2/2CDSujl
 rxZMo+WNPBkO3D7dHv02rP3VdPNPPlt0HzW2R0Q8BfpkOgoFrAzML9nI/R9WhN1Wx9lB
 /IXJ95LYi6jB1XJCJXKDrdpztNgbhhQgzoJN8fb2cSMWiVI4yDrHLh60RxAqNPQKutac
 Cf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767870689; x=1768475489;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=1BkJysBnNZhs5NyTGbETBkSrANeMxDweJaKqNNZ1pKs=;
 b=mfRrDoeoYRw3GAivVA2ZGiG7s8XdrDYPTZkh46g40NZr//jDgNmKxT2MYRPSuaHFdm
 OJIU0TrX/2QodOZKQMbQbGEcfYP/r4i68CKBO8EvbY/yHnM36e6ONG8MjjMtS6VGZTIu
 LxCGayHHaOfJ8myxVxYo5zgd/n1aKbgUAuZZe0q7fQsQV7+mJOZ4dqWfZfbw40IIczLN
 kk+lfICTSKqjup2lkSeS/Cqcj5+5xbpDJuhCZntRp7NzTYwBpT52hvkvQoUCm2aE/5+6
 3/o+Oj13vSTg84/OhuOy3PzZrga58i2NNqO/VfjEyUWwbe4BO4dT2V6vd4gQdFoy+DMv
 wg6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUF4wRg6mmTTZMSypZ59HnblHj1w+lYb23nk/6YE/1pWo5kNP26NZADS7FohCz8Qw3qRjbx3ZW2MkE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwIKNZG7z7vY+V20/nnWijSu1A56kKH5kW9yVAFa1DMeaEUqn4g
 UpdMZ/BtZ7zuynjDche/X13e2Hc4naPazLUpZJPCtdt1ZSGvNymJMTLzZC6dFOx4e1l3jmrwd8R
 lxYrr3aQ8AK9vjEK4XvpieBv0tcakYZs=
X-Gm-Gg: AY/fxX6AmA/DqHW2PDiEBeQz7aBZHn0xzaht9nDpPkbE+IzwDvd/+f6swSVTvnQiYjK
 KKRhi1OqADKlyp5XVyda4HHuHtost4gMv59+qRYc2g+3Py3Dnys7ldiZaptjKDznwdei8dQ/Mc9
 XlitIROc0/y3hnR/toY0jfqNk1f1J2SUQlKvcITZwy1jLKlH+vgVtMuxhUpf4gKq3vk1JtEgReT
 tTMDwBvpIJVNgYjoKRKXmNFV9Cg4KHEpZp06LcpLEF+4wJwzrkNeF2QPUVwIRNxybJN5J6A/Kgv
 QbkJvEMKZtnsOIj6/3w3HKBSusvI
X-Google-Smtp-Source: AGHT+IG4n9ByaeEZgm/hmqvGtffWXbfGj6FBDt+/MmPyym5l8YKUUzk1uCtz1udF/ON0TcdaDRZ8K0oWqVvFjpXNdaI=
X-Received: by 2002:a17:907:2d90:b0:b79:e4db:2e9 with SMTP id
 a640c23a62f3a-b844541de18mr553306566b.60.1767870688410; Thu, 08 Jan 2026
 03:11:28 -0800 (PST)
MIME-Version: 1.0
References: <CADN_a6OKUQ6fgu-JjNvwFb_MV8dxTDhppoq4DDnQ9p_t-JZ8yg@mail.gmail.com>
 <1afd1c1c255e96c95687175e9cc0c92041f8ccbc@intel.com>
In-Reply-To: <1afd1c1c255e96c95687175e9cc0c92041f8ccbc@intel.com>
From: =?UTF-8?B?SsOpcsO0bWUgVG9sbGV0?= <jerome.tollet@gmail.com>
Date: Thu, 8 Jan 2026 12:11:16 +0100
X-Gm-Features: AQt7F2rx2B0B8IzgQBg-SzIMfZ9CcRnceID_Qa_FEKZ9X5TDoYpAKDBcME-AW5M
Message-ID: <CADN_a6PDou4FOB43yt=9Q2vgc9x8-qTmObNn-OuVdDzFZ=Zxtw@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: rodrigo.vivi@intel.com, ankit.k.nautiyal@intel.com, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 08 Jan 2026 13:08:14 +0000
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

 Hi Jani,

 Sorry about that - Gmail mangled the whitespace. I'm resending it
 properly using git send-email.

 Thanks for catching this!

 Jerome

Le jeu. 8 janv. 2026 =C3=A0 10:45, Jani Nikula
<jani.nikula@linux.intel.com> a =C3=A9crit :
>
> On Thu, 08 Jan 2026, J=C3=A9r=C3=B4me Tollet <jerome.tollet@gmail.com> wr=
ote:
> > Hello,
> > As per HDMI 2.0 specification, after scrambled video transmission begin=
s,
> >  the source must poll the TMDS_Scrambler_Status bit until it reads 1 or
> >  until a timeout of 200 ms.
> >
> >  Add a polling step after enabling the HDMI port to verify scrambling
> >  status, following the spec requirement.
> >
> >  Without the wait for the scrambling bit to set, some HDMI 2.0 monitors=
 fail
> >  to decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not =
yet
> >  fully configured by the sink.
> >
> >  v2:
> >   - Instead of the fixed delay, poll for TMDS scramble status for 200 m=
sec
> >     as per the HDMI spec. (Ankit)
>
> The patch is whitespace broken.
>
> >
> >  Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
> >  Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
> >  Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.t=
ollet@gmail.com/
> >  Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
> >  Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >  ---
> >   drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
> >   drivers/gpu/drm/i915/display/intel_hdmi.c | 25 ++++++++++++++++++++++=
+
> >   drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
> >   3 files changed, 29 insertions(+)
> >
> >  diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> >  index cb91d07cdaa6..c708b713f0e8 100644
> >  --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >  +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >  @@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct
> > intel_atomic_state *state,
> >   }
> >
> >   intel_ddi_buf_enable(encoder, buf_ctl);
> >  +
> >  + intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
> >   }
> >
> >   static void intel_ddi_enable(struct intel_atomic_state *state,
> >  diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >  index 055e68810d0d..958d939ae6ee 100644
> >  --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> >  +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> >  @@ -2694,6 +2694,31 @@ intel_hdmi_add_properties(struct intel_hdmi
> > *intel_hdmi, struct drm_connector *_
> >   drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
> >   }
> >
> >  +/*
> >  + * As Per HDMI 2.0 spec: after scrambled video transmission begins,
> >  + * poll TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
> >  + */
> >  +void
> >  +intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state
> > *crtc_state,
> >  +       struct drm_connector *_connector)
> >  +{
> >  + struct intel_connector *connector =3D to_intel_connector(_connector)=
;
> >  + struct intel_display *display =3D to_intel_display(crtc_state);
> >  + bool scrambling_enabled =3D false;
> >  + int ret;
> >  +
> >  + if (!crtc_state->hdmi_scrambling)
> >  + return;
> >  +
> >  + /* Poll for a max of 200 msec as per HDMI spec */
> >  + ret =3D poll_timeout_us(scrambling_enabled =3D
> > drm_scdc_get_scrambling_status(&connector->base),
> >  +       scrambling_enabled, 1000, 200 * 1000, false);
> >  + if (ret)
> >  + drm_dbg_kms(display->drm,
> >  +     "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
> >  +     connector->base.base.id, connector->base.name);
> >  +}
> >  +
> >   /*
> >    * intel_hdmi_handle_sink_scrambling: handle sink scrambling/clock ra=
tio setup
> >    * @encoder: intel_encoder
> >  diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h
> > b/drivers/gpu/drm/i915/display/intel_hdmi.h
> >  index be2fad57e4ad..0fa3661568e8 100644
> >  --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> >  +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> >  @@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encode=
r,
> >   const struct intel_crtc_state *crtc_state,
> >   unsigned int type,
> >   void *frame, ssize_t len);
> >  +void intel_hdmi_poll_for_scrambling_enable(const struct
> > intel_crtc_state *crtc_state,
> >  +    struct drm_connector *_connector);
> >
> >   #endif /* __INTEL_HDMI_H__ */
> >  --
> >  2.45.2
>
> --
> Jani Nikula, Intel
