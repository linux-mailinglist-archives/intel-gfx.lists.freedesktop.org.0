Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08461308AD7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 18:06:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EACE6E983;
	Fri, 29 Jan 2021 17:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717126E983
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 17:06:40 +0000 (UTC)
IronPort-SDR: va7Q2mPNl4Tt2UJFLjv21FP4gKmm2ho9HHTn2l+1+DPPZrHnC1wxlSDVWzblCZyeHwKW6K2uVv
 mX4UGwqqQiGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="180593141"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="180593141"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:06:38 -0800
IronPort-SDR: m6FaLqq6qFaTn3eeiS6+La0YckLRLNfdvvFhR2j9ipwd3FChzYMrAogIYosnlFwryANfZOXQLe
 cNKT8l1J9TVQ==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="389381490"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:06:37 -0800
Date: Fri, 29 Jan 2021 19:06:33 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210129170633.GC183052@ideak-desk.fi.intel.com>
References: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
 <20210128155948.13678-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128155948.13678-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Power up combo PHY lanes for
 for HDMI as well
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 05:59:46PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Currently we only explicitly power up the combo PHY lanes
> for DP. The spec says we should do it for HDMI as well.
> =

> Cc: stable@vger.kernel.org
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 88cc6e2fbe91..8fbeb8c24efb 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4337,6 +4337,8 @@ static void intel_enable_ddi_hdmi(struct intel_atom=
ic_state *state,
>  		intel_de_write(dev_priv, reg, val);
>  	}
>  =

> +	intel_ddi_power_up_lanes(encoder, crtc_state);
> +

Not sure if it matters, but the spec says to apply WA #1143 just before
enabling DDI_BUF_CTL.


>  	/* In HDMI/DVI mode, the port width, and swing/emphasis values
>  	 * are ignored so nothing special needs to be done besides
>  	 * enabling the port.
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
