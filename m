Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D520A2952F8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 21:31:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1A7F6F4C5;
	Wed, 21 Oct 2020 19:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 867296F4C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 19:30:57 +0000 (UTC)
IronPort-SDR: Qh+Dmg0NRN/Hma6ngPp0iXcBaPBELJduWKsK+OOroZdwK4EtYIhkTovHnfUEA9gohscKj9dv88
 bzHFkOGeay8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="252121909"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="252121909"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 12:30:56 -0700
IronPort-SDR: 7dBsDlJCDAQpkesD9e7LkzGGgTynnDu77b+rbf1fN8hs+nAqV4kBDUG5gXDj+ccrCNzZDw6bD0
 YpOftahwG27w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="332697017"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 21 Oct 2020 12:30:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Oct 2020 22:30:53 +0300
Date: Wed, 21 Oct 2020 22:30:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201021193053.GH6112@intel.com>
References: <20201021185649.17759-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021185649.17759-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Unkerneldoc
 cnl_program_nearest_filter_coefs
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

On Wed, Oct 21, 2020 at 07:56:49PM +0100, Chris Wilson wrote:
> The block comment for cnl_program_nearest_filter_coefs() has a wonderful
> diagram, but although it is marked up as kerneldoc does not use the
> markup for providing the function definition.
> =

> drivers/gpu/drm/i915/display/intel_display.c:6341: warning: Function para=
meter or member 'dev_priv' not described in 'cnl_program_nearest_filter_coe=
fs'
> drivers/gpu/drm/i915/display/intel_display.c:6341: warning: Function para=
meter or member 'pipe' not described in 'cnl_program_nearest_filter_coefs'
> drivers/gpu/drm/i915/display/intel_display.c:6341: warning: Function para=
meter or member 'id' not described in 'cnl_program_nearest_filter_coefs'
> drivers/gpu/drm/i915/display/intel_display.c:6341: warning: Function para=
meter or member 'set' not described in 'cnl_program_nearest_filter_coefs'
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 130303e0298a..6eff9a971d0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6299,7 +6299,7 @@ static u16 cnl_nearest_filter_coef(int t)
>  	return t =3D=3D 3 ? 0x0800 : 0x3000;
>  }
>  =

> -/**
> +/*
>   *  Theory behind setting nearest-neighbor integer scaling:
>   *
>   *  17 phase of 7 taps requires 119 coefficients in 60 dwords per set.
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
