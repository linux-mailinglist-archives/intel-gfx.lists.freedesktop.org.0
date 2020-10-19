Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87262292F71
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 22:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE66C6EA75;
	Mon, 19 Oct 2020 20:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9596EA75
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 20:31:06 +0000 (UTC)
IronPort-SDR: eaWhif+XqpqTuQwZiOLEYztj1S4dKY8oACWOo/1KWvztvdRklpa1P654wxEkHBpL7xf+kNwd+U
 oMHx8pE6Vg5w==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="184715981"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="184715981"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 13:30:55 -0700
IronPort-SDR: Rt4ILKqitJ22dgmVmQvU7QQHxdaPQlAcmdBmjHmmUWvSWRtkafSPMiCDSabr5CejJ7A3jX8Rlh
 Ki9Z9YUq59qw==
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="358268395"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 13:30:53 -0700
Date: Mon, 19 Oct 2020 13:30:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201019203051.GR3805439@mdroper-desk1.amr.corp.intel.com>
References: <20201019175609.28715-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019175609.28715-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/fbc: Implement WA
 22010751166
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

On Mon, Oct 19, 2020 at 10:56:09AM -0700, Jos=E9 Roberto de Souza wrote:
> Underruns happens when plane height + y offset is not a module of 4

I think you meant 'modulo' rather than 'module' here.

> when FBC is enabled.

Technically the workaround calls for us to just do our FBC disables for
non-modulo 4 planes when the scanline is at vactive-10, but that doesn't
seem to be something that's actually feasible to do at the software
level.  Just keeping FBC disabled when working with planes of the
problematic size as you do here does seem like the safest approach.
Should we make a note of our slight deviation from the workaround
details here?

> =

> Specification says that it only affects TGL display C stepping and
> newer but to simply the check and as TGL is already in final costumers
> hands, pre-production display stepping A and B was also included.
> =

> BSpec: 52887 ICL
> BSpec: 52888 EHL/JSL
> BSpec: 52890/55378 TGL
> BSpec: 53508 DG1
> BSpec: 53273 RKL
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Up to you whether you tweak the commit message as noted above or not.
Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 135f5e8a4d70..a5b072816a7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -907,6 +907,13 @@ static bool intel_fbc_can_activate(struct intel_crtc=
 *crtc)
>  		return false;
>  	}
>  =

> +	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> +	if (INTEL_GEN(dev_priv) >=3D 11 &&
> +	    (cache->plane.src_h + cache->plane.adjusted_y) % 4) {
> +		fbc->no_fbc_reason =3D "plane height + offset is non-modulo of 4";
> +		return false;
> +	}
> +
>  	return true;
>  }
>  =

> -- =

> 2.28.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
