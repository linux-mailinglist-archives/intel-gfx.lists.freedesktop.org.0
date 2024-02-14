Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA89A8552F6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 20:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3707C10E194;
	Wed, 14 Feb 2024 19:10:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="bTZPDRYP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
 [209.85.219.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42E810E0FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 19:10:36 +0000 (UTC)
Received: by mail-yb1-f180.google.com with SMTP id
 3f1490d57ef6-dcbc00f6c04so2918508276.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 11:10:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1707937836; x=1708542636; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Uq831+oypzfGO9lO95Fszd/4mrvaWFJLcRrSZ1YqWm8=;
 b=bTZPDRYPjYBqCNRhnf8d7we8w1ERzIk31tvOD2cuF8EuUYhXIMva/KmofOeo9hVgHX
 JKbfonA1wUNIYL1j1O8busQYoWcWTgAviOJgoO01iEnrAiwn8VW5ORVpnBdJ2H+Zl4Ue
 M1ceewVLJED2uQSz5L5u4bMtMdeCw0s6WKKgaYZW7lv2SxAca7jzSCSDzcdjgRVrgEgi
 yp+tl+rXwNsIeglcQy5bwgPDqaRksq33cSonRoluhqcbZmpl5Qoo359f1p8zS1UtCvE/
 zbYNCg+pLToXSROIcyxTkNk8VetUUJD+B9K36NrIo4DbRxOmFylss/mJfDCW7TXHAhHG
 sEaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707937836; x=1708542636;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Uq831+oypzfGO9lO95Fszd/4mrvaWFJLcRrSZ1YqWm8=;
 b=TQVIVugHaciSoekRSyUH5ZRpRaKiRTHAbB9u0kVm0QwAFeVPtllDc2vpPQHY3YKov9
 K6FFfyMZEcF13dUXGfGI8unhs2FCx/HTbOKDn/pDmRi2mU7pXgetXGjD5rMHZN69NgLI
 ATIiVJwTEIh0qSQO7aAk/J01px/q4Qlq2W3mr0LLPbJ+soavpUmVB65QNPpri6LyZV1J
 GyMdNyNRkUxH1pvft6kimcmJlFvcAz2rvdV8g/3X0cV1PLw6ZeH/87sLLpuIC4W1qor3
 Rns9HFhivw9GmPvkVXEkAgHyCCK7uGR50M2EdagofnOr64sY1qOAnrnLRqnsMKNvCTA3
 qMDg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX1EA7egYwEEV53JCpazXWWAbqKNQnEOEggryMS84c84cjhkedrToAf1FM1z6hc7L9Guyfl9zy1h9++Yfpg9AGFbnAnJ4cOBzxRctCBlzPf
X-Gm-Message-State: AOJu0YxaqGBXHRvOQVDEUPqsouwlBZO7Vo5OezjKQtg45swERUYPtHle
 FD1q4QLt05l7y2eEYrR18582/vzqYNQvcC94WGjZ3hGRzuwOJ1AHg80KUSNopHjxcDzD3UA9B9a
 tFKVQW3S6w6a9rrLHagbKuUGpN28eiNRhZ7mVJg==
X-Google-Smtp-Source: AGHT+IFmsVR2aJSFUOiWSYzFcUYy50TjKK+2YxD61ipvFBAbBI+bFm3GfY2tdB3QV5bM1o3Q0AKeikm65DKhHmKecag=
X-Received: by 2002:a25:83cf:0:b0:dcd:5c7:8466 with SMTP id
 v15-20020a2583cf000000b00dcd05c78466mr3316434ybm.44.1707937835898; Wed, 14
 Feb 2024 11:10:35 -0800 (PST)
MIME-Version: 1.0
References: <20240213234513.2411604-1-quic_abhinavk@quicinc.com>
 <CAA8EJpo0yeLyCkVvLFX7wUEV4+i+ORbaCB2qxN0izaWLdFqCrA@mail.gmail.com>
 <eb8b3bac-5f97-8efd-721e-08e9544be3f8@quicinc.com>
 <Zc0AR6pdLzDjCrAB@intel.com>
 <fa63e9c1-3cec-41df-c643-33950346b76c@quicinc.com>
In-Reply-To: <fa63e9c1-3cec-41df-c643-33950346b76c@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 14 Feb 2024 21:10:24 +0200
Message-ID: <CAA8EJppqMZFG=wN3kdn75Mx6zYX58LDJHV6Vv3Zuk=bw-h3mRg@mail.gmail.com>
Subject: Re: [PATCH] drm/dp: move intel_dp_vsc_sdp_pack() to generic helper
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, robdclark@gmail.com, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 quic_jesszhan@quicinc.com, linux-kernel@vger.kernel.org, 
 intel-xe@lists.freedesktop.org
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

On Wed, 14 Feb 2024 at 20:08, Abhinav Kumar <quic_abhinavk@quicinc.com> wro=
te:
>
>
>
> On 2/14/2024 10:02 AM, Ville Syrj=C3=A4l=C3=A4 wrote:
> > On Wed, Feb 14, 2024 at 09:17:34AM -0800, Abhinav Kumar wrote:
> >>
> >>
> >> On 2/14/2024 12:15 AM, Dmitry Baryshkov wrote:
> >>> On Wed, 14 Feb 2024 at 01:45, Abhinav Kumar <quic_abhinavk@quicinc.co=
m> wrote:
> >>>>
> >>>> intel_dp_vsc_sdp_pack() can be re-used by other DRM drivers as well.
> >>>> Lets move this to drm_dp_helper to achieve this.
> >>>>
> >>>> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> >>>
> >>> My preference would be to have packing functions in
> >>> drivers/video/hdmi.c, as we already have
> >>> hdmi_audio_infoframe_pack_for_dp() there.
> >>>
> >>
> >> My preference is drm_dp_helper because it already has some VSC SDP stu=
ff
> >> and after discussion with Ville on IRC, I decided to post it this way.
> >>
> >> hdmi_audio_infoframe_pack_for_dp() is an exception from my PoV as the
> >> hdmi audio infoframe fields were re-used and packed into a DP SDP
> >> thereby re-using the existing struct hdmi_audio_infoframe .
> >>
> >> This is not like that. Here we pack from struct drm_dp_vsc_sdp to stru=
ct
> >> dp_sdp both of which had prior usages already in this file.
> >>
> >> So it all adds up and makes sense to me to be in this file.
> >>
> >> I will let the other DRM core maintainers comment on this.
> >>
> >> Ville, Jani?
> >
> > Yeah, I'm not sure bloating the (poorly named) hdmi.c with all
> > SDP stuff is a great idea. Since other related stuff already
> > lives in the drm_dp_helper.c that seems reasonable to me at this
> > time. And if we get a decent amount of this then probably all
> > DP SDP stuff should be extracted into its own file.
> >
>
> Yes, thanks.
>
> > There are of course a few overlaps here andthere (the audio SDP
> > I guess, and the CTA infoframe SDP). But I'm not sure that actually
> > needs any SDP specific stuff in hdmi.c, or could we just let hdmi.c
> > deal with the actual CTA-861 stuff and then have the DP SDP code
> > wrap that up in its own thing externally? Dunno, haven't really
> > looked at the details.
> >
>
> Thats a good way to look at it. this packing is from DP spec and not CTA
> so makes more sense to be in this file.
>
> In that case, R-b?
>
> >>
> >>>> ---
> >>>>    drivers/gpu/drm/display/drm_dp_helper.c | 78 ++++++++++++++++++++=
+++++
> >>>>    drivers/gpu/drm/i915/display/intel_dp.c | 73 +-------------------=
---
> >>>>    include/drm/display/drm_dp_helper.h     |  3 +
> >>>>    3 files changed, 84 insertions(+), 70 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/d=
rm/display/drm_dp_helper.c
> >>>> index b1ca3a1100da..066cfbbf7a91 100644
> >>>> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> >>>> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> >>>> @@ -2916,6 +2916,84 @@ void drm_dp_vsc_sdp_log(const char *level, st=
ruct device *dev,
> >>>>    }
> >>>>    EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
> >>>>
> >>>> +/**
> >>>> + * drm_dp_vsc_sdp_pack() - pack a given vsc sdp into generic dp_sdp
> >>>> + * @vsc: vsc sdp initialized according to its purpose as defined in
> >>>> + *       table 2-118 - table 2-120 in DP 1.4a specification
> >>>> + * @sdp: valid handle to the generic dp_sdp which will be packed
> >>>> + * @size: valid size of the passed sdp handle
> >>>> + *
> >>>> + * Returns length of sdp on success and error code on failure
> >>>> + */
> >>>> +ssize_t drm_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
> >>>> +                           struct dp_sdp *sdp, size_t size)
> >>>
> >>> I know that you are just moving the function. Maybe there can be
> >>> patch#2, which drops the size argument? The struct dp_sdp already has
> >>> a defined size. The i915 driver just passes sizeof(sdp), which is mor=
e
> >>> or less useless.
> >>>
> >>
> >> Yes this is a valid point, I also noticed this. I can post it on top o=
f
> >> this once we get an agreement and ack on this patch first.
> >>

From my side, with the promise of the size fixup.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


--=20
With best wishes
Dmitry
