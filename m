Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4916D5385
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 23:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B795A10E57E;
	Mon,  3 Apr 2023 21:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E64882AF
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 21:33:15 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id u20so20125571pfk.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Apr 2023 14:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1680557595;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PQQJsuko2gHpFenAXAsG9MEwhQEtgc80DeeRepLWAPo=;
 b=bNVGiEo2JUT+uywK86ze/pXgeD7YiytFxJABnIhr4tZOKY2m8Hp7WsrXTocOz9OozK
 28+xqkUVostMIeu6PDsCFtrFPl0UsF4TIGu4b3LEAOfCpkY8gofljTiYyiIqNc3I+CGD
 afktAqYo00dq9kzbOnywC7JoXgwpvJj85KDJQUSoSnng1spoaqQKBu1pGwUZZtwTOnjN
 lgZzmJEuRBNC39lPHS0Gn3zHVX1yQ/nJiZ6jr4MSOWUqLxdd7LSi/cYgllPYh780hZpa
 diJTKLXhTCaPxh/pCaf6W+B7+krmJqnS8Y+Brafxz0nu5CSpwa4oP20qu7vu8aUoIF7i
 FufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680557595;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PQQJsuko2gHpFenAXAsG9MEwhQEtgc80DeeRepLWAPo=;
 b=EM2DPmX1ZjYh1UXOo45Wuw/7mVt86Y5E+g63zT0Sl3HjZctrf8gei6bmm1mSGZCMrS
 dffhoqGbnftcIOgOlzuxwCPAR0K0yv2TLTfV22jPiRtBqLT8w6EP2x4ldSQxTfX5aArn
 /Bel88zKnrIzdxLGfv0CR9ls5604kfTd2QcffTcu4zuaQKhChI0Cru8n9skbwTPxYY3Y
 0CltYbLkKpMOf6g/hH4JWdpTESl11mqpUoewdNr1P8PnNWMl2j8kvKJa8s0bgA0jQ3HE
 zowNRpzHJqLJE5CNq6X9w5fpj6o+zKvdazy7WGsb7v/wEfnUaZilJrZxamD7uXilYWea
 fO8w==
X-Gm-Message-State: AAQBX9fBMLX35z5g6dhSSARhkKIAfooG/fdfXUxiROyqt/HqwxA2/a9H
 jbHBJ7+7QWgNKTaunckwW2gLgXInRItdKdbM2dLPHA==
X-Google-Smtp-Source: AKy350aybhLcXgtFM1Q1SFCQqYhRKy2TUgUXEp92dct2LOFrcWuvs6ojlbULoYYIsLQJNyijE5PYqqcmHtcu2PrDdCg=
X-Received: by 2002:a05:6a00:a1c:b0:62d:e8f1:edbf with SMTP id
 p28-20020a056a000a1c00b0062de8f1edbfmr42312pfh.5.1680557595129; Mon, 03 Apr
 2023 14:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
 <ZCQLhkwNGRnZkD4k@intel.com>
 <f62f54f4-b42f-dc23-2ae9-2be450854bb1@intel.com> <ZCQYkQHDnPLX0Ee2@intel.com>
 <32039884-4045-478a-e03b-09afba2b15a3@intel.com> <ZCQiijNDxTqT98bw@intel.com>
 <fbf095f7-a222-8763-5624-7440b645c5e7@intel.com>
In-Reply-To: <fbf095f7-a222-8763-5624-7440b645c5e7@intel.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Mon, 3 Apr 2023 14:33:03 -0700
Message-ID: <CAMNLLoTFyGOP2Oj2BtW4PXXcE1EFC05qNUEjqwhfS+SZaKjYeQ@mail.gmail.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 30, 2023 at 4:11=E2=80=AFAM Nautiyal, Ankit K
<ankit.k.nautiyal@intel.com> wrote:
>
>
> On 3/29/2023 5:05 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
> > On Wed, Mar 29, 2023 at 05:00:55PM +0530, Nautiyal, Ankit K wrote:
> >> On 3/29/2023 4:23 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
> >>> On Wed, Mar 29, 2023 at 04:06:21PM +0530, Nautiyal, Ankit K wrote:
> >>>> On 3/29/2023 3:27 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
> >>>>> On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
> >>>>>> As per Bspec, Big Joiner BW check is:
> >>>>>> Output bpp <=3D PPC * CDCLK frequency * Big joiner interface bits =
/
> >>>>>> Pixel clock
> >>>>>>
> >>>>>> Currently we always use max_cdclk in the check for both modevalid
> >>>>>> and compute config steps.
> >>>>>>
> >>>>>> During modevalid use max_cdclk_freq for the check.
> >>>>>> During compute config step use current cdclk for the check.
> >>>>> Nak. cdclk is computed much later based on what is actually needed.
> >>>>> The cdclk freq you are using here is essentially a random number.
> >>>> Oh I didn't realise that, perhaps I was lucky when I tested this.
> >>>>
> >>>> So this check where CDCLK is mentioned, actually expects max_cdclk_f=
req?
> >>>>
> >>>> If it doesnt then, we might have a compressed_bpp value, that might =
be
> >>>> violating the big joiner bw check.
> >>>>
> >>>> Should this be handled while computing cdclk?
> >>> Yes. I suggest adding something like intel_vdsc_min_cdclk() that
> >>> handles all of it.
> >>
> >> I can try that out.
> >>
> >> Will also add *Pipe BW check*: Pixel clock < PPC * CDCLK frequency *
> >> Number of pipes joined, which seems to be missing.
> > That is already accounted for in the pixel rate.
>
> Indeed, will club this check and the other bigjoiner_bw check in
> intel_vdsc_min_cdclk, if the approach mentioned in the other mail is
> acceptable.
>
> Regards,
>
> Ankit

Hi Ankit,

Yes I think it makes sense to add the vdsc_min_cdclk check while
computing the min cdclk.
This will hopefully let us exercise all allowed compressed bpps all
the way to 27, which have caused failures earlier
possibly due to the cdcclk being reduced beyond the pipe bw required
with the max compressed bpp that we use.
So best would be to check against vdsc_mind_cdclk required if dsc is
enabled for that configuration, if not then skip
the check

Regards
Manasi
>
> >
> >> So with pipe bw_check cdclk should be >  Pixel clock / (PPC * Number o=
f
> >> pipes joined)
> >>
> >> In addition, as per bigjoiner check it should be >=3D compressed_bpp /
> >> (PPC * bigjoiner interface bits).
> >>
> >> Regards,
> >>
> >> Ankit
> >>
> >>>> Regards,
> >>>>
> >>>> Ankit
> >>>>
> >>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>>>> ---
> >>>>>>     drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
> >>>>>>     drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
> >>>>>>     drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
> >>>>>>     3 files changed, 8 insertions(+), 3 deletions(-)
> >>>>>>
> >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu=
/drm/i915/display/intel_dp.c
> >>>>>> index 3fe651a8f5d0..d6600de1ab49 100644
> >>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >>>>>> @@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_=
i915_private *i915, u32 bpp, u32 p
> >>>>>>     u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> >>>>>>                                  u32 link_clock, u32 lane_count,
> >>>>>>                                  u32 mode_clock, u32 mode_hdisplay=
,
> >>>>>> +                                unsigned int cdclk,
> >>>>>>                                  bool bigjoiner,
> >>>>>>                                  u32 pipe_bpp,
> >>>>>>                                  u32 timeslots)
> >>>>>> @@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i91=
5_private *i915,
> >>>>>>
> >>>>>>          if (bigjoiner) {
> >>>>>>                  int bigjoiner_interface_bits =3D DISPLAY_VER(i915=
) <=3D 12 ? 24 : 36;
> >>>>>> -                u32 max_bpp_bigjoiner =3D
> >>>>>> -                        i915->display.cdclk.max_cdclk_freq * 2 * =
bigjoiner_interface_bits /
> >>>>>> -                        intel_dp_mode_to_fec_clock(mode_clock);
> >>>>>> +
> >>>>>> +                u32 max_bpp_bigjoiner =3D cdclk * 2 * bigjoiner_i=
nterface_bits /
> >>>>>> +                                        intel_dp_mode_to_fec_cloc=
k(mode_clock);
> >>>>>>
> >>>>>>                  bits_per_pixel =3D min(bits_per_pixel, max_bpp_bi=
gjoiner);
> >>>>>>          }
> >>>>>> @@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_c=
onnector,
> >>>>>>                                                              max_l=
anes,
> >>>>>>                                                              targe=
t_clock,
> >>>>>>                                                              mode-=
>hdisplay,
> >>>>>> +                                                            dev_p=
riv->display.cdclk.max_cdclk_freq,
> >>>>>>                                                              bigjo=
iner,
> >>>>>>                                                              pipe_=
bpp, 64) >> 4;
> >>>>>>                          dsc_slice_count =3D
> >>>>>> @@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel=
_dp *intel_dp,
> >>>>>>                                                              pipe_=
config->lane_count,
> >>>>>>                                                              adjus=
ted_mode->crtc_clock,
> >>>>>>                                                              adjus=
ted_mode->crtc_hdisplay,
> >>>>>> +                                                            dev_p=
riv->display.cdclk.hw.cdclk,
> >>>>>>                                                              pipe_=
config->bigjoiner_pipes,
> >>>>>>                                                              pipe_=
bpp,
> >>>>>>                                                              times=
lots);
> >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu=
/drm/i915/display/intel_dp.h
> >>>>>> index ef39e4f7a329..d150bfe8abf4 100644
> >>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> >>>>>> @@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *=
intel_dp, u8 dsc_max_bpc);
> >>>>>>     u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> >>>>>>                                  u32 link_clock, u32 lane_count,
> >>>>>>                                  u32 mode_clock, u32 mode_hdisplay=
,
> >>>>>> +                                unsigned int cdclk,
> >>>>>>                                  bool bigjoiner,
> >>>>>>                                  u32 pipe_bpp,
> >>>>>>                                  u32 timeslots);
> >>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers=
/gpu/drm/i915/display/intel_dp_mst.c
> >>>>>> index a860cbc5dbea..266e31b78729 100644
> >>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >>>>>> @@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connect=
or *connector,
> >>>>>>                                                              max_l=
anes,
> >>>>>>                                                              targe=
t_clock,
> >>>>>>                                                              mode-=
>hdisplay,
> >>>>>> +                                                            dev_p=
riv->display.cdclk.max_cdclk_freq,
> >>>>>>                                                              bigjo=
iner,
> >>>>>>                                                              pipe_=
bpp, 64) >> 4;
> >>>>>>                          dsc_slice_count =3D
> >>>>>> --
> >>>>>> 2.25.1
