Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A36C47812D9
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 20:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 256BC10E0E4;
	Fri, 18 Aug 2023 18:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39E4B10E0E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 18:25:30 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-99bcc0adab4so150498966b.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 11:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692383128; x=1692987928;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KmrWlpuNYvAdZXw8ORjpfCZeayWiqV48fxa2VIgmh5s=;
 b=NvTPCqn+6c1P4fF3DHZyBV8NI/9FXWDyMltonSaaCC2jgWcKYFHaWbZJ50leTrKv4j
 oFaO1JA+ZqGofyHUx1grYDLLBIzqLRUCcpYvKjeERWdiB37OsUZY3JW12OrPA8STiSPN
 goAMMZDtjSfl6gn0r6JF85WnbvFTOAcZu4I44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692383128; x=1692987928;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KmrWlpuNYvAdZXw8ORjpfCZeayWiqV48fxa2VIgmh5s=;
 b=N77Kf4FKgtg0NoB9qgj4+mxMYeNYSidK2SmtuzRgHQLX8ArGeP2d3h5cUzt4s0ZL56
 Q/VA34Z5KNYizTpAouVIpHcSfGzJwyckvbVWo4lrZmW6O7wuYdz4qUD+ExcwhjHS1cE0
 nWhnP/H5zY31/8LnDzkrvsTigdYMNiA2/BoU6ZWPqVfnBcgG7E6B/mQQ06wF5aoWHeKm
 JXkyYvt19u32tvEr4SxbHXLsWpIIyyOXYehMbv3A9EruUr4/QXIlk0dRDf5XhK3eZHiS
 hrkrReHY2TafOcLkUTPZVUEIR/5zfBzlKDmw2Wdw7EnbXev1ZyuFHl9DRon0ID5UTdEt
 i2sA==
X-Gm-Message-State: AOJu0YwZ+klhMlVvxN3KUGz6Ma8hyaBbcT/ROuzUyPfGhKC0D48B9nXU
 HJoylLPxgSAkEsOmckfX6/LIjaZwgsYcwy/+2flOGA==
X-Google-Smtp-Source: AGHT+IHQ0Re+RzQUHW0NfWifEIt9mlcDZtjSSUqtHSKH1jG73gAU+Hra0HKtm+7VmACa8DxrG1qlmdK+7UeeYACp1Vk=
X-Received: by 2002:a17:906:8a55:b0:99b:4bab:2838 with SMTP id
 gx21-20020a1709068a5500b0099b4bab2838mr32213ejc.0.1692383128520; Fri, 18 Aug
 2023 11:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230818170156.2194015-1-gildekel@chromium.org>
 <20230818170156.2194015-2-gildekel@chromium.org>
In-Reply-To: <20230818170156.2194015-2-gildekel@chromium.org>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Fri, 18 Aug 2023 11:25:17 -0700
Message-ID: <CAE72mN=m=eKEfF6b7sBGOBPg9KSkqcUbG-iHF+9dDbYF_A6aFQ@mail.gmail.com>
To: Gil Dekel <gildekel@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dp_link_training: Add a final
 failing state to link training fallback
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
Cc: intel-gfx@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the patch and all your work to improve the link training
fallback logic and
to correctly reflect the link status to the userspace.

Chiming in some of the findings and this logic justification below so
it will help
the reviewers further.


On Fri, Aug 18, 2023 at 10:02=E2=80=AFAM Gil Dekel <gildekel@chromium.org> =
wrote:
>
> Instead of silently giving up when all link-training fallback values are
> exhausted, this patch modifies the fallback's failure branch to reduces
> both max_link_lane_count and max_link_rate to zero (0) and continues to
> emit uevents until userspace stops attempting to modeset.
>
> By doing so, we ensure the failing connector, which is in
> link-status=3DBad, has all its modes pruned (due to effectively having a
> bandwidth of 0Gbps).
>

This is critical to correctly propagate the final link training
failure to the userspace instead
of just failing with an error message in the kernel.
This definitely completes the link training fallback logic by making
sure that if we have exhausted
all the link rate/lane count combinations and the physical link is
still failing to link train,
then the effective available link BW is marked as 0 so that all the
modes get pruned.

This correctly reflects the state of a connector which is connected
with essentially a bad link
and cannot display any mode and that display remains dark.

Regards
Manasi


> It is then the userspace's responsibility to ignore connectors with no
> modes, even if they are marked as connected.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Cc: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Gil Dekel <gildekel@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 964bf0551bdc..1e4dae8aad90 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -276,8 +276,12 @@ static int intel_dp_common_len_rate_limit(const stru=
ct intel_dp *intel_dp,
>
>  static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
>  {
> +       /* This occurs when max link rate drops to 0 via link training fa=
llback*/
> +       if (index < 0)
> +               return 0;
> +
>         if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> -                       index < 0 || index >=3D intel_dp->num_common_rate=
s))
> +                       index >=3D intel_dp->num_common_rates))
>                 return 162000;
>
>         return intel_dp->common_rates[index];
> @@ -318,6 +322,9 @@ static int intel_dp_max_common_lane_count(struct inte=
l_dp *intel_dp)
>  int intel_dp_max_lane_count(struct intel_dp *intel_dp)
>  {
>         switch (intel_dp->max_link_lane_count) {
> +       /* This occurs when max link lane count drops to 0 via link train=
ing fallback*/
> +       case 0:
> +               return 0;
>         case 1:
>         case 2:
>         case 4:
> @@ -672,7 +679,14 @@ int intel_dp_get_link_train_fallback_values(struct i=
ntel_dp *intel_dp,
>                 intel_dp->max_link_lane_count =3D lane_count >> 1;
>         } else {
>                 drm_err(&i915->drm, "Link Training Unsuccessful\n");
> -               return -1;
> +               /*
> +                * Ensure all of the connector's modes are pruned in the =
next
> +                * probe by effectively reducing its bandwidth to 0 so us=
erspace
> +                * can ignore it within the next modeset attempt.
> +                */
> +               intel_dp->max_link_rate =3D 0;
> +               intel_dp->max_link_lane_count =3D 0;
> +               return 0;
>         }
>
>         return 0;
> --
> Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
