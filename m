Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BE67426F9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 15:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8502B10E3CA;
	Thu, 29 Jun 2023 13:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61CAF10E3CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 13:07:59 +0000 (UTC)
Received: from 91-155-254-218.elisa-laajakaista.fi ([91.155.254.218]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1qErNL-009LAJ-9A;
 Thu, 29 Jun 2023 16:07:56 +0300
Message-ID: <b0d08fc3262215241ef2d731d61741ab93f295d9.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jun 2023 16:07:54 +0300
In-Reply-To: <20230629122534.8815-1-stanislav.lisovskiy@intel.com>
References: <20230629122534.8815-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fail if DSC compression
 requirement is less than platform supports
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

On Thu, 2023-06-29 at 15:25 +0300, Stanislav Lisovskiy wrote:
> Currently we just clamp that value to the highest supported one, however =
that
> means, we are not able to fit this into our available bandwidth range, so=
 we
> might see glitches or FIFO underruns.
> While choosing less compressed bpp than min bpp required to handle the mo=
de is
> harmless and might even save some bandwidth, choosing higher compressed b=
pp than
> min bpp required to handle the required mode config, can cause issues.
> So in that case lets just conclude that even with DSC, we are not able to=
 comply
> with bandwidth requirements and fail.
>=20
> v2: - s/clamp_t/min_t/ (Luca Coelho)
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 9f40da20e88d..03675620e3ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -713,9 +713,18 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_p=
rivate *i915, u32 bpp, u32 p
> =20
>  		/*
>  		 * According to BSpec, 27 is the max DSC output bpp,
> -		 * 8 is the min DSC output bpp
> +		 * 8 is the min DSC output bpp.
> +		 * While we can still clamp higher bpp values to 27, saving bandwidth,
> +		 * if it is required to oompress up to bpp < 8, means we can't do
> +		 * that and probably means we can't fit the required mode, even with
> +		 * DSC enabled.
>  		 */
> -		bits_per_pixel =3D clamp_t(u32, bits_per_pixel, 8, 27);
> +		if (bits_per_pixel < 8) {
> +			drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min 8\n",
> +				    bits_per_pixel);
> +			return 0;
> +		}
> +		bits_per_pixel =3D min_t(u32, bits_per_pixel, 27);
>  	} else {
>  		/* Find the nearest match in the array of known BPPs from VESA */
>  		for (i =3D 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
