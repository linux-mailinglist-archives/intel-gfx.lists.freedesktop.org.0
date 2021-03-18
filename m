Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A92E4340C5E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 19:00:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C2C6E93D;
	Thu, 18 Mar 2021 18:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A368F6E93D
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 18:00:13 +0000 (UTC)
IronPort-SDR: J2RoYqmXYIAyCYg8yacCnExv/HM6Vjpa7oD3D9W5tIM/OXbXQVGJII4wD1SDz2TPD2CFQANGxa
 1ReWwskdNlkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="177332408"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="177332408"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:00:13 -0700
IronPort-SDR: ro7YVxnXiCp+zBgYJ81Sxdp29Ts51zPhsrULw/SY+//gT7PHrNUvNgW2VLfCGtY0q6rgj9khfe
 rH88PaEbggdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="450570890"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 18 Mar 2021 11:00:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Mar 2021 20:00:10 +0200
Date: Thu, 18 Mar 2021 20:00:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YFOVKoReLkmB7ZuQ@intel.com>
References: <20210317184901.4029798-1-imre.deak@intel.com>
 <20210317184901.4029798-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210317184901.4029798-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915: Disable LTTPR support when
 the LTTPR rev < 1.4
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 17, 2021 at 08:49:01PM +0200, Imre Deak wrote:
> By the specification the 0xF0000 - 0xF02FF range is only valid if the
> LTTPR revision at 0xF0000 is at least 1.4. Disable the LTTPR support
> otherwise.
> =

> Fixes: 7b2a4ab8b0ef ("drm/i915: Switch to LTTPR transparent mode link tra=
ining")
> Cc: <stable@vger.kernel.org> # v5.11
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c  | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index d8d90903226f..d92eb192c89d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -100,17 +100,23 @@ static bool intel_dp_read_lttpr_common_caps(struct =
intel_dp *intel_dp)
>  		return false;
>  =

>  	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
> -					  intel_dp->lttpr_common_caps) < 0) {
> -		intel_dp_reset_lttpr_common_caps(intel_dp);
> -		return false;
> -	}
> +					  intel_dp->lttpr_common_caps) < 0)
> +		goto reset_caps;

BTW just noticed this oddball thing in the spec:
"DPTX shall read specific registers within the LTTPR field (DPCD
 Addresses F0000h through F0004h; see Table 2-198) to determine
 whether any LTTPR(s) are present and if so, how many. This read
 shall be in the form of a 5-byte native AUX Read transaction."

Why exactly 5 bytes? I have no idea. Doesn't really make sense.
Just wondering if we really need to respect that and some LTTPRs
would fsck things up if we read more...

Anyways
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

>  	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>  		    "LTTPR common capabilities: %*ph\n",
>  		    (int)sizeof(intel_dp->lttpr_common_caps),
>  		    intel_dp->lttpr_common_caps);
>  =

> +	/* The minimum value of LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_RE=
V is 1.4 */
> +	if (intel_dp->lttpr_common_caps[0] < 0x14)
> +		goto reset_caps;
> +
>  	return true;
> +
> +reset_caps:
> +	intel_dp_reset_lttpr_common_caps(intel_dp);
> +	return false;
>  }
>  =

>  static bool
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
