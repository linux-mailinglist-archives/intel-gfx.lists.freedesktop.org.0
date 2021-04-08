Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57072358F9B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Apr 2021 00:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F386E409;
	Thu,  8 Apr 2021 22:03:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096F36E409
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 22:03:06 +0000 (UTC)
IronPort-SDR: Ufi+ckFc/TIOI7l/t5zXoq8tg1OXC+mA827c80DFVkLrVr/7cEA1dUWhPR3qwUvS16T7xT4Im7
 fB4oRF8/HSaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="214057072"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="214057072"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:03:06 -0700
IronPort-SDR: d5cIqu1YLbJ1Fo4tw/Se8bubMOeaB5dOc37DAWOhqwIaazSvECTuAxbI0fZUacVSZO3pZy1U9B
 xmdMWO7MR4CQ==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="448822382"
Received: from kmkerns-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.209.131.159])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:02:56 -0700
Date: Thu, 8 Apr 2021 18:02:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YG99j8yYOfghyTBv@intel.com>
References: <20210408214205.327704-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210408214205.327704-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Defeature PSR2 for RKL
 and ADL-S
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

On Thu, Apr 08, 2021 at 02:42:05PM -0700, Jos=E9 Roberto de Souza wrote:
> PSR2 is defeatured for RKL and ADL-S, no important power impact as
> those are desktop CPUs and PSR2 was not even enabled by default yet
> in platforms without PSR2 HW tracking.
> =

> HSDES: 14011750631
> HSDES: 14011741325
> BSpec: 53273
> Cc: Caz Yokoyama <Caz.Yokoyama@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 32d3d56259c2..2627d0b558f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -739,6 +739,12 @@ static bool intel_psr2_config_valid(struct intel_dp =
*intel_dp,
>  		return false;
>  	}
>  =

> +	/* Wa_16011181250 */
> +	if (IS_ROCKETLAKE(dev_priv) || IS_ALDERLAKE_S(dev_priv)) {
> +		drm_dbg_kms(&dev_priv->drm, "PSR2 is defeatured for this platform\n");
> +		return false;
> +	}
> +
>  	if (!transcoder_has_psr2(dev_priv, crtc_state->cpu_transcoder)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "PSR2 not supported in transcoder %s\n",
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
