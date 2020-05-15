Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966F61D59CD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 21:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C2E6ED07;
	Fri, 15 May 2020 19:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D2186ED07
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 19:17:16 +0000 (UTC)
IronPort-SDR: 51tCORDlrKYMI8O2C24/ffgkb4xeQwdvaOQxHKvMD316s/nnGmXniQsbDa2/awMRtrzd4pXYHu
 JYeDkrj4YyAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:17:15 -0700
IronPort-SDR: HxTwupMpRYfzjg/vVkEbt/Woliunm9sRt2NlJ1C1QCcTUVwBnl1RkjFhyVbLhPFPFj+r1bjB74
 zhqJBww1YK1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="252467518"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 15 May 2020 12:17:15 -0700
Date: Fri, 15 May 2020 12:18:22 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200515191822.GB20478@intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
 <20200512174145.3186-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512174145.3186-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Reverse preemph vs. voltage
 swing preference
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

On Tue, May 12, 2020 at 08:41:43PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The DP spec says:
> "When the combination of the requested pre-emphasis level and
>  voltage swing exceeds the capability of a DPTX, the DPTX shall
>  set the pre-emphasis level according to the request and use the
>  highest voltage swing it can output with the given pre-emphasis level."
> and
> "When a DPTX reads a request beyond the limits of this Standard,
>  the DPTX shall set the pre-emphasis level according to the request
>  and set the highest voltage swing level it can output with the
>  given pre-emphasis level. If a DPTX is requested for 9.5dB of
>  pre-emphasis level (may be supported for a DPTX) and cannot support
>  that level, it shall set the pre-emphasis level to the next
>  highest level, 6dB."
> =

> Ie. we should first validate the pre-emphasis, and then select
> the appropriate vswing for it.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

So basically reverse the logic for selecting the vswing and pre emphasis

> ---
>  .../drm/i915/display/intel_dp_link_training.c | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 171d9e842fc0..573f93779449 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -34,18 +34,18 @@ intel_dp_dump_link_status(const u8 link_status[DP_LIN=
K_STATUS_SIZE])
>  		      link_status[3], link_status[4], link_status[5]);
>  }
>  =

> -static u8 dp_pre_emphasis_max(u8 voltage_swing)
> +static u8 dp_voltage_max(u8 preemph)
>  {
> -	switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
> -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_0:
> -		return DP_TRAIN_PRE_EMPH_LEVEL_3;
> -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_1:
> -		return DP_TRAIN_PRE_EMPH_LEVEL_2;
> -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_2:
> -		return DP_TRAIN_PRE_EMPH_LEVEL_1;
> -	case DP_TRAIN_VOLTAGE_SWING_LEVEL_3:
> +	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
> +	case DP_TRAIN_PRE_EMPH_LEVEL_0:
> +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
> +	case DP_TRAIN_PRE_EMPH_LEVEL_1:
> +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
> +	case DP_TRAIN_PRE_EMPH_LEVEL_2:
> +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_1;
> +	case DP_TRAIN_PRE_EMPH_LEVEL_3:
>  	default:
> -		return DP_TRAIN_PRE_EMPH_LEVEL_0;
> +		return DP_TRAIN_VOLTAGE_SWING_LEVEL_0;

These vswing levels for that specific pre emph level comes from the Bspec
or from the DP spec? It wasnt clear to me how level3 of vswing was the max =
for pre emphasis level 0 and all others?

Manasi

>  	}
>  }
>  =

> @@ -68,15 +68,15 @@ void intel_dp_get_adjust_train(struct intel_dp *intel=
_dp,
>  			p =3D this_p;
>  	}
>  =

> -	voltage_max =3D intel_dp->voltage_max(intel_dp);
> -	if (v >=3D voltage_max)
> -		v =3D voltage_max | DP_TRAIN_MAX_SWING_REACHED;
> -
> -	preemph_max =3D min(intel_dp->preemph_max(intel_dp),
> -			  dp_pre_emphasis_max(v));
> +	preemph_max =3D intel_dp->preemph_max(intel_dp);
>  	if (p >=3D preemph_max)
>  		p =3D preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
>  =

> +	voltage_max =3D min(intel_dp->voltage_max(intel_dp),
> +			  dp_voltage_max(p));
> +	if (v >=3D voltage_max)
> +		v =3D voltage_max | DP_TRAIN_MAX_SWING_REACHED;
> +
>  	for (lane =3D 0; lane < 4; lane++)
>  		intel_dp->train_set[lane] =3D v | p;
>  }
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
