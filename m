Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFA539189D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACB86E12E;
	Wed, 26 May 2021 13:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C9F86E12E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 13:20:02 +0000 (UTC)
IronPort-SDR: qWukgk4fCGn+0KeAKeXh+pFExHUvDuAluknyDfOZyFmgwIjFxW/YmyIzkLugTwOFPmnWDitG/8
 IJTxu9woaOrA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223646701"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223646701"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:20:01 -0700
IronPort-SDR: +anPhA5uDuJGOaaJVXgOdUi9q253IuPSIWBK6PiGBMl8fb40D1A/5yRzh4zElY9V8Yjcr0F7dh
 rSvGUFIrtWQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="409255924"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 26 May 2021 06:19:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 May 2021 16:19:58 +0300
Date: Wed, 26 May 2021 16:19:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YK5K/oLKd9arG9Ol@intel.com>
References: <20210526082903.26395-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526082903.26395-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: enable MSO on pipe B
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

On Wed, May 26, 2021 at 11:29:03AM +0300, Jani Nikula wrote:
> On ADL-P, it's possible to enable the stream splitter on pipe B in
> addition to pipe A.
> =

> Bspec: 50174
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I have a feeling I reviewed this already. But maybe I'm just
imagining it.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3d8918674153..4d6f1a206f56 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4729,9 +4729,12 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>  =

>  		dig_port->hpd_pulse =3D intel_dp_hpd_pulse;
>  =

> -		/* Splitter enable for eDP MSO is supported for pipe A only. */
> -		if (dig_port->dp.mso_link_count)
> +		/* Splitter enable for eDP MSO is limited to certain pipes. */
> +		if (dig_port->dp.mso_link_count) {
>  			encoder->pipe_mask =3D BIT(PIPE_A);
> +			if (IS_ALDERLAKE_P(dev_priv))
> +				encoder->pipe_mask |=3D BIT(PIPE_B);
> +		}
>  	}
>  =

>  	/* In theory we don't need the encoder->type check, but leave it just in
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
