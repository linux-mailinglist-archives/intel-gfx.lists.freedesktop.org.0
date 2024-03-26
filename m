Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0833188CE05
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:14:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E00710F27D;
	Tue, 26 Mar 2024 20:14:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="AzIx4Cpl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1E010F280
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:14:34 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-2d485886545so104633151fa.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 13:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1711484072; x=1712088872;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iO8swokNExt5uM0KuXsZb2dbMqnfFCSo+oQMl3kSWgI=;
 b=AzIx4CplBcRnreSWsTkzlMGA3ar6ex69G4jABJblIge+Q7l+z/Jy6QSjXIlAec2Ayu
 AKcuaFOhl94tkFB8GjDcGr7fPjKuHLKbzGEJLFj4Nu0SfBTQw2jyTgBwmvkzU8QYHM+z
 HJ4MnC3g0X6uQKlWGCnU2cadapEQpuOM41VJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711484072; x=1712088872;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iO8swokNExt5uM0KuXsZb2dbMqnfFCSo+oQMl3kSWgI=;
 b=Ldk233mf5M3MipvomR+gIqRiufzuksWPFoH2vPSKEEbEH+y9TTyIrmsKYBlosVwaWF
 L8KvKDrstzE8FmRttippnygMTqwRPxERr79RcGL4bgbgpvKZs/UwzuFh0/dqCPYkQ7SX
 p8lTI+eeoLxKmJmmfAL/3U0sxGgz7k9ET9r/oQpJlx5B60ygQQmesvtJ+DZPK3DeL3+q
 QQ9hsjhDynx7fNvqkan2HTkuG+5XfjFTTfMJXEfZCcYFefJ6y9UXWjyfL3uT7FJZhsq2
 Db/XVcnqUSmjPxs4y66t/ClSJTbPNvCPAJ5eZ85zFagxg+fBn3487YXdDc/CoRRloI43
 1nWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUeM6qbGQ3EBXJiDG3vuqHjHo8L0FeoPm8QMZj0Zk5sS0xrV3n92pSQQcK1YhKL+uRNMZXxvMk6sHEuYV0L/JFp7gh9U8EpzTX7D4vEGQ9e
X-Gm-Message-State: AOJu0YzmOq7bJCbl6IubRu4q/+gl+E94dUnQpM4YG3SHRdrwyTItd6Ku
 obP8L2okdgzEbHvYVVcb0W+LwaUTjEgIWrW6tJVZF/znDesXW09AiiMViuBx4lRKNrQGq6B9Abk
 NIe3ECB43eRt/IyL2hjbb+PqaV5Fa+a3ois4i
X-Google-Smtp-Source: AGHT+IHxTBz/68y3jhfEeUO9ZdOmKq9v2dvXkfU+RGzDe/g5hDzj7GRKxNtQ8adifXRm3O3/4QUTc+PHKlXmwXHX9Sc=
X-Received: by 2002:a05:651c:1032:b0:2d6:f372:aba7 with SMTP id
 w18-20020a05651c103200b002d6f372aba7mr606602ljm.39.1711484072140; Tue, 26 Mar
 2024 13:14:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-8-imre.deak@intel.com>
 <8d6ff583-aa7f-4279-8200-cd5a79b85534@intel.com>
In-Reply-To: <8d6ff583-aa7f-4279-8200-cd5a79b85534@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 26 Mar 2024 13:14:21 -0700
Message-ID: <CAE72mN=4KCNsDimBYMQ80Y0NixuVKrWkiup3nPFWY=aNYm-3dg@mail.gmail.com>
Subject: Re: [PATCH 07/11] drm/dp: Add drm_dp_uhbr_channel_coding_supported()
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
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

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Tue, Mar 26, 2024 at 5:54=E2=80=AFAM Nautiyal, Ankit K
<ankit.k.nautiyal@intel.com> wrote:
>
>
> On 3/21/2024 1:41 AM, Imre Deak wrote:
> > Factor out a function to check for UHBR channel coding support used by =
a
> > follow-up patch in the patchset.
> >
> > Cc: dri-devel@lists.freedesktop.org
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>
> LGTM.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >   include/drm/display/drm_dp_helper.h     | 6 ++++++
> >   2 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index dbe65651bf277..1d13a1ba2b97d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -217,7 +217,7 @@ static void intel_dp_set_dpcd_sink_rates(struct int=
el_dp *intel_dp)
> >        * Sink rates for 128b/132b. If set, sink should support all 8b/1=
0b
> >        * rates and 10 Gbps.
> >        */
> > -     if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128=
B132B) {
> > +     if (drm_dp_uhbr_channel_coding_supported(intel_dp->dpcd)) {
> >               u8 uhbr_rates =3D 0;
> >
> >               BUILD_BUG_ON(ARRAY_SIZE(intel_dp->sink_rates) < ARRAY_SIZ=
E(dp_rates) + 3);
> > diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/=
drm_dp_helper.h
> > index a62fcd051d4d4..150c37a99a16f 100644
> > --- a/include/drm/display/drm_dp_helper.h
> > +++ b/include/drm/display/drm_dp_helper.h
> > @@ -221,6 +221,12 @@ drm_dp_channel_coding_supported(const u8 dpcd[DP_R=
ECEIVER_CAP_SIZE])
> >       return dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_8B10B;
> >   }
> >
> > +static inline bool
> > +drm_dp_uhbr_channel_coding_supported(const u8 dpcd[DP_RECEIVER_CAP_SIZ=
E])
> > +{
> > +     return dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B;
> > +}
> > +
> >   static inline bool
> >   drm_dp_alternate_scrambler_reset_cap(const u8 dpcd[DP_RECEIVER_CAP_SI=
ZE])
> >   {
