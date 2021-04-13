Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1C935E4C0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 19:12:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C0F6E851;
	Tue, 13 Apr 2021 17:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702006E851
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 17:12:41 +0000 (UTC)
IronPort-SDR: msC5aVUKv7laqO7orul9lnAa0UUM50XVn2uK61Pu15OLFHvBu8VqDP1iN9NU7KkvrmjL+bA0MJ
 HjiKvrh/nnUA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194026431"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="194026431"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 10:12:40 -0700
IronPort-SDR: BkAUe+MpFzDxyYJeQTIpnGz61Y/DTynrZftNxnCZ+0WvTAG1D5cEa4uz9bnE1LUZGvkorkxzi9
 KEkIA3dTv87g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="420860693"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 13 Apr 2021 10:12:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Apr 2021 20:12:37 +0300
Date: Tue, 13 Apr 2021 20:12:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YHXRBSsBkNXoPIFS@intel.com>
References: <20210412232413.2755054-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412232413.2755054-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix modesetting in case of
 unexpected AUX timeouts
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

On Tue, Apr 13, 2021 at 02:24:12AM +0300, Imre Deak wrote:
> In case AUX failures happen unexpectedly during a modeset, the driver
> should still complete the modeset. In particular the driver should
> perform the link training sequence steps even in case of an AUX failure,
> as this sequence also includes port initialization steps. Not doing that
> can leave the port/pipe in a broken state and lead for instance to a
> flip done timeout.
> =

> Fix this by continuing with link training (in a no-LTTPR mode) if the
> DPRX DPCD readout failed for some reason at the beginning of link
> training. After a successful connector detection we already have the
> DPCD read out and cached, so the failed repeated read for it should not
> cause a problem. Note that a partial AUX read could in theory partly
> overwrite the cached DPCD (and return error) but this overwrite should
> not happen if the returned values are corrupted (due to a timeout or
> some other IO error).
> =

> Kudos to Ville to root cause the problem.
> =

> Fixes: 7dffbdedb96a ("drm/i915: Disable LTTPR support when the DPCD rev <=
 1.4")
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/3308
> Cc: stable@vger.kernel.org # 5.11
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 5e9c3c74310ca..cbcfb0c4c3708 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -882,7 +882,8 @@ void intel_dp_start_link_train(struct intel_dp *intel=
_dp,
>  	int lttpr_count =3D intel_dp_init_lttpr_and_dprx_caps(intel_dp);
>  =

>  	if (lttpr_count < 0)
> -		return;
> +		/* Still continue with enabling the port and link training. */
> +		lttpr_count =3D 0;
>  =

>  	if (!intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count))
>  		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
> -- =

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
