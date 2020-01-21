Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C185143FA0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 15:33:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 416256ED20;
	Tue, 21 Jan 2020 14:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC666ED20
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 14:32:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 06:32:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="221719547"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 21 Jan 2020 06:32:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Jan 2020 16:32:52 +0200
Date: Tue, 21 Jan 2020 16:32:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200121143252.GB13686@intel.com>
References: <20200117150235.22471-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117150235.22471-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: debug log max vswing and
 pre-emphasis
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

On Fri, Jan 17, 2020 at 05:02:35PM +0200, Jani Nikula wrote:
> Provide slightly more debugging help.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4074d83b1a5f..c26be4421f01 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4142,11 +4142,14 @@ intel_dp_set_signal_levels(struct intel_dp *intel=
_dp)
>  	if (mask)
>  		DRM_DEBUG_KMS("Using signal levels %08x\n", signal_levels);
>  =

> -	DRM_DEBUG_KMS("Using vswing level %d\n",
> -		train_set & DP_TRAIN_VOLTAGE_SWING_MASK);
> -	DRM_DEBUG_KMS("Using pre-emphasis level %d\n",
> -		(train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> -			DP_TRAIN_PRE_EMPHASIS_SHIFT);
> +	DRM_DEBUG_KMS("Using vswing level %d%s\n",
> +		      train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
> +		      train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "");
> +	DRM_DEBUG_KMS("Using pre-emphasis level %d%s\n",
> +		      (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> +		      DP_TRAIN_PRE_EMPHASIS_SHIFT,
> +		      train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
> +		      " (max)" : "");
>  =

>  	intel_dp->DP =3D (intel_dp->DP & ~mask) | signal_levels;
>  =

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
