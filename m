Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A99F250742
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 20:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8ED889E57;
	Mon, 24 Aug 2020 18:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952F789E57
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 18:16:23 +0000 (UTC)
IronPort-SDR: GfLA/OZ72Ezwz8bvyhq6AAck+2bJ24Evdl4XYkGqFhLzBtEs6AJuTeuSlfbtDyHXWw8tgqkplW
 GWvQuvmDpt9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="136029312"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="136029312"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 11:16:23 -0700
IronPort-SDR: twuvsV/A53/fZrYG6kZWPztRXy6ns++iPxwmrAY2Cu/ClIMnzlcY9+Kyrqah5eNt/Hk6xBHYYk
 rWAZKyDRhtLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="336256422"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 24 Aug 2020 11:16:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Aug 2020 21:16:19 +0300
Date: Mon, 24 Aug 2020 21:16:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200824181619.GJ6112@intel.com>
References: <20200817074418.24045-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817074418.24045-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add an extra vblank wait
 before fbc activation
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

On Mon, Aug 17, 2020 at 01:14:18PM +0530, Uma Shankar wrote:
> Add an extra vblank before fbc is activated.
> WA: 1409689360
> Corruption with FBC around plane 1A enabling. In the Frame Buffer
> Compression programming sequence "Display Plane Enabling with FBC"
> add a wait for vblank between plane enabling step 1 and FBC enabling
> step 2.

Already there due to drm_atomic_helper_wait_for_flip_done().

> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 2ab32e6532ff..0ed252ff2c53 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1085,10 +1085,12 @@ static void __intel_fbc_post_update(struct intel_=
crtc *crtc)
>  	if (!intel_fbc_can_activate(crtc))
>  		return;
>  =

> -	if (!fbc->busy_bits)
> +	if (!fbc->busy_bits) {
> +		intel_wait_for_vblank(dev_priv, crtc->pipe);
>  		intel_fbc_hw_activate(dev_priv);
> -	else
> +	} else {
>  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
> +	}
>  }
>  =

>  void intel_fbc_post_update(struct intel_atomic_state *state,
> -- =

> 2.22.0
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
