Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CE531FF90
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 20:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639596EB9E;
	Fri, 19 Feb 2021 19:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8286EB9E
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 19:46:41 +0000 (UTC)
IronPort-SDR: XyQFq9fCrR9hcbFNFyoBJUnDbFMTfIwd+VWmdnnPYfNQ0Q+yLYbZmJ8ef7lMfIuutPYb26V63D
 Lpu/MBFfjwDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="181391041"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="181391041"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 11:46:41 -0800
IronPort-SDR: x9lZ9zSPTWq07ms4LUhTsjxnE6Was0KtAYPizmgppSoZarFvMctvqRzQyehI+/U06KVlii78eH
 pf5hxnOJZbtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="387120122"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 19 Feb 2021 11:46:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Feb 2021 21:46:38 +0200
Date: Fri, 19 Feb 2021 21:46:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YDAVngWZmA1KAqTy@intel.com>
References: <20210219191623.163775-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219191623.163775-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Read planes watermarks
 during initial state readout
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

On Fri, Feb 19, 2021 at 11:16:23AM -0800, Jos=E9 Roberto de Souza wrote:
> Without this readout all plane watermarks will be kept at zero in the
> initial state readount causing two problems.
> =

> All active planes will always have their watermarks programmed
> again, even if what firmware programmed matches with the sanitized
> state during driver takeover.
> =

> State mismatch errors in disabled planes as watermarks will erroneous
> match with the calculated state if firmware left watermark registers
> with non-zero values.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d0da88751c72..14fba4411be7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13620,6 +13620,8 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  			drm_calc_timestamping_constants(&slave->base,
>  							&slave_crtc_state->hw.adjusted_mode);
>  		}
> +
> +		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);

Strange. skl_wm_get_hw_state() should be doing this already.

>  	}
>  }
>  =

> -- =

> 2.30.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
