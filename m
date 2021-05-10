Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC45D379AEB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 01:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7176E975;
	Mon, 10 May 2021 23:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B56226E975
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 23:49:22 +0000 (UTC)
IronPort-SDR: wUua+FIELCS2KJIshUytxLhoCM8aNHinN2at93dJuP6PF91KSZkvNJ+eGvV/cnI6EpTg5KXnod
 ZWVVIZbR00FQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="284801149"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="284801149"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 16:49:22 -0700
IronPort-SDR: ZaWIirkYehwy15FN8B2jjhOgGGL0kug5++4XFtBk15BuoZ1F02lePtnHW9Tb8XG5NkgortC+ce
 2qwVGPMEkKsw==
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="436367948"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 16:49:22 -0700
Date: Mon, 10 May 2021 16:49:21 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210510234921.GC31357@InViCtUs>
References: <20210418002126.87882-1-jose.souza@intel.com>
 <20210418002126.87882-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210418002126.87882-3-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/display: Drop duplicated code
 in intel_dp_set_infoframes()
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Apr 17, 2021 at 05:21:24PM -0700, Jos=E9 Roberto de Souza wrote:
> No functional changes in here.
> =

> Cc: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 72bcc10cae4f..cf380f98d54c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2865,24 +2865,19 @@ void intel_dp_set_infoframes(struct intel_encoder=
 *encoder,
>  	u32 dip_enable =3D VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
>  			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
>  			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
> -	u32 val =3D intel_de_read(dev_priv, reg);
> +	u32 val =3D intel_de_read(dev_priv, reg) & ~dip_enable;
>  =

>  	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
>  	/* When PSR is enabled, this routine doesn't disable VSC DIP */
> -	if (crtc_state->has_psr)
> -		val &=3D ~dip_enable;
> -	else
> -		val &=3D ~(dip_enable | VIDEO_DIP_ENABLE_VSC_HSW);
> -
> -	if (!enable) {
> -		intel_de_write(dev_priv, reg, val);
> -		intel_de_posting_read(dev_priv, reg);
> -		return;
> -	}
> +	if (!crtc_state->has_psr)
> +		val &=3D ~VIDEO_DIP_ENABLE_VSC_HSW;
>  =

>  	intel_de_write(dev_priv, reg, val);
>  	intel_de_posting_read(dev_priv, reg);
>  =

> +	if (!enable)
> +		return;
> +
>  	/* When PSR is enabled, VSC SDP is handled by PSR routine */
>  	if (!crtc_state->has_psr)
>  		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
