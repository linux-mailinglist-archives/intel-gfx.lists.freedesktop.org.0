Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E58A2B9667
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 16:42:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E52B6E528;
	Thu, 19 Nov 2020 15:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC30C6E528
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 15:42:21 +0000 (UTC)
IronPort-SDR: RPeGJ6I03NhJektJAsZ0PTWhDq09GO9MAzZEgUe7gkmp5gJ9rLFLXeoG7Uj9KWHkd83XpA61z1
 ujEI7LmDq/vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="171405298"
X-IronPort-AV: E=Sophos;i="5.78,490,1599548400"; d="scan'208";a="171405298"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 07:42:20 -0800
IronPort-SDR: WjHU/Dxli1AioqaMVfMhW63x8Z/Ma3DfNrQDxPDDhBVWvkZelZQPn5HzyIBcU01pghKFFy16h8
 Wyxni8lmvOSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,490,1599548400"; d="scan'208";a="368803075"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 19 Nov 2020 07:42:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 17:42:18 +0200
Date: Thu, 19 Nov 2020 17:42:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201119154218.GJ6112@intel.com>
References: <20201119155050.20328-1-uma.shankar@intel.com>
 <20201119155050.20328-2-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119155050.20328-2-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

On Thu, Nov 19, 2020 at 09:20:49PM +0530, Uma Shankar wrote:
> There are some corner cases wrt underrun when we enable
> FBC with PSR2 on TGL. Recommendation from hardware is to
> keep this combination disabled.
> =

> Bspec: 50422 HSD: 14010260002
> =

> v2: Added psr2 enabled check from crtc_state (Anshuman)
> Added Bspec link and HSD referneces (Jose)
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index a5b072816a7b..c64ed1cd29b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -799,6 +799,17 @@ static bool intel_fbc_can_activate(struct intel_crtc=
 *crtc)
>  	struct intel_fbc *fbc =3D &dev_priv->fbc;
>  	struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
>  =

> +	/*
> +	 * Tigerlake is not supporting FBC with PSR2.
> +	 * Recommendation is to keep this combination disabled
> +	 * Bspec: 50422 HSD: 14010260002
> +	 */
> +	if (crtc->config && crtc->config->has_psr2 &&

Please don't add more crtc->config usages. After several years
we've almost reached the point where we can finally remove it.
I should porbably take a look at how much work would be required
to at least make it always NULL on g4x+.

The fbc state tracking is a total mess atm, but I think you can
stuff this into intel_fbc_update_state_cache() and either just
set cache->plane.visible=3Dfalse (which is a bit of a lie but would
work), or add a new thing into the params/cache.

My plan is to eliminate most of the this params/cache mess
and just cache the things fbc really needs for hw
activate/deactivate. I do have a wip branch but haven't had
time recently to continue the work.

> +	    IS_TIGERLAKE(dev_priv)) {
> +		fbc->no_fbc_reason =3D "not supported with PSR2";
> +		return false;
> +	}
> +
>  	if (!intel_fbc_can_enable(dev_priv))
>  		return false;
>  =

> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
