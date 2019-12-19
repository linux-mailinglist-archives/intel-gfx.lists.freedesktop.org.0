Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D2C126232
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 13:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D2C6EAFC;
	Thu, 19 Dec 2019 12:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BCD36EB5F;
 Thu, 19 Dec 2019 12:33:14 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 04:33:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="248305796"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 19 Dec 2019 04:33:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2019 14:33:10 +0200
Date: Thu, 19 Dec 2019 14:33:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191219123310.GG1208@intel.com>
References: <20191218151350.19579-1-animesh.manna@intel.com>
 <20191218151350.19579-4-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218151350.19579-4-animesh.manna@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/dp: Move
 vswing/pre-emphasis adjustment calculation
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 18, 2019 at 08:43:44PM +0530, Animesh Manna wrote:
> vswing/pre-emphasis adjustment calculation is needed in processing
> of auto phy compliance request other than link training, so moved
> the same function in intel_dp.c.
> =

> No functional change.
> =

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 32 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  3 ++
>  .../drm/i915/display/intel_dp_link_training.c | 32 -------------------
>  3 files changed, 35 insertions(+), 32 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 2f31d226c6eb..ca82835b6dcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4110,6 +4110,38 @@ ivb_cpu_edp_signal_levels(u8 train_set)
>  	}
>  }
>  =

> +void
> +intel_get_adjust_train(struct intel_dp *intel_dp,
> +		       const u8 *link_status)

I'd prefer to keep the arrayish notation so we have some idea how big
this is supposed to be. I guess that woukld mean including some
drm dp header in intel_dp.h?

> +{
> +	u8 v =3D 0;
> +	u8 p =3D 0;
> +	int lane;
> +	u8 voltage_max;
> +	u8 preemph_max;
> +
> +	for (lane =3D 0; lane < intel_dp->lane_count; lane++) {
> +		u8 this_v =3D drm_dp_get_adjust_request_voltage(link_status, lane);
> +		u8 this_p =3D drm_dp_get_adjust_request_pre_emphasis(link_status, lane=
);
> +
> +		if (this_v > v)
> +			v =3D this_v;
> +		if (this_p > p)
> +			p =3D this_p;
> +	}
> +
> +	voltage_max =3D intel_dp_voltage_max(intel_dp);
> +	if (v >=3D voltage_max)
> +		v =3D voltage_max | DP_TRAIN_MAX_SWING_REACHED;
> +
> +	preemph_max =3D intel_dp_pre_emphasis_max(intel_dp, v);
> +	if (p >=3D preemph_max)
> +		p =3D preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
> +
> +	for (lane =3D 0; lane < 4; lane++)
> +		intel_dp->train_set[lane] =3D v | p;
> +}
> +
>  void
>  intel_dp_set_signal_levels(struct intel_dp *intel_dp)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 3da166054788..0d0cb692f701 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -91,6 +91,9 @@ void
>  intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
>  				       u8 dp_train_pat);
>  void
> +intel_get_adjust_train(struct intel_dp *intel_dp,
> +		       const u8 *link_status);
> +void
>  intel_dp_set_signal_levels(struct intel_dp *intel_dp);
>  void intel_dp_set_idle_link_train(struct intel_dp *intel_dp);
>  u8
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 2a1130dd1ad0..1e38584e7d56 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -34,38 +34,6 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK=
_STATUS_SIZE])
>  		      link_status[3], link_status[4], link_status[5]);
>  }
>  =

> -static void
> -intel_get_adjust_train(struct intel_dp *intel_dp,
> -		       const u8 link_status[DP_LINK_STATUS_SIZE])
> -{
> -	u8 v =3D 0;
> -	u8 p =3D 0;
> -	int lane;
> -	u8 voltage_max;
> -	u8 preemph_max;
> -
> -	for (lane =3D 0; lane < intel_dp->lane_count; lane++) {
> -		u8 this_v =3D drm_dp_get_adjust_request_voltage(link_status, lane);
> -		u8 this_p =3D drm_dp_get_adjust_request_pre_emphasis(link_status, lane=
);
> -
> -		if (this_v > v)
> -			v =3D this_v;
> -		if (this_p > p)
> -			p =3D this_p;
> -	}
> -
> -	voltage_max =3D intel_dp_voltage_max(intel_dp);
> -	if (v >=3D voltage_max)
> -		v =3D voltage_max | DP_TRAIN_MAX_SWING_REACHED;
> -
> -	preemph_max =3D intel_dp_pre_emphasis_max(intel_dp, v);
> -	if (p >=3D preemph_max)
> -		p =3D preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
> -
> -	for (lane =3D 0; lane < 4; lane++)
> -		intel_dp->train_set[lane] =3D v | p;
> -}
> -
>  static bool
>  intel_dp_set_link_train(struct intel_dp *intel_dp,
>  			u8 dp_train_pat)
> -- =

> 2.24.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
