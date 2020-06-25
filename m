Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA1E20A735
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 23:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2536E35F;
	Thu, 25 Jun 2020 21:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 984D36E35F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 21:07:00 +0000 (UTC)
IronPort-SDR: 9fb29DNVVxzQOlZRoBPQI2I2+631426HuL9BiZDyT7mPrtW9oCSE3LRMH/qEczS8ImGs978DN8
 woUagW+GcDlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="229809074"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="229809074"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 14:06:59 -0700
IronPort-SDR: jB1Ll1shvfwXRd8wzU+n1Jl+9lZ5MrncoXEjkZlKGS4LdRLCwnNMX60yZk+TfoW7cQKKc0YVh7
 bgUyaWLzMmcg==
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="453145630"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 14:06:58 -0700
Date: Fri, 26 Jun 2020 00:06:52 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200625210652.GA18750@ideak-desk.fi.intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
 <20200512174145.3186-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512174145.3186-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Fix
 DP_TRAIN_MAX_{PRE_EMPHASIS, SWING}_REACHED handling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 12, 2020 at 08:41:44PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The DP spec says:
> "The transmitter shall support at least three levels of voltage
>  swing (Levels 0, 1, and 2).
> =

>  If only three levels of voltage swing are supported (VOLTAGE
>  SWING SET field (bits 1:0) are programmed to 10 (Level 2)),
>  this bit shall be set to 1, and cleared in all other cases.
> =

>  If all four levels of voltage swing are supported (VOLTAGE
>  SWING SET field (bits 1:0) are programmed to 11 (Level 3)),
>  this bit shall be set to 1,and cleared in all other cases."
> =

> Let's follow that exactly instead of the current apporach
> where we can set those also for vswing/preemph levels 0 or 1
> (or 2 when the platform max is 3).
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Yep, so the sink could've incorrectly stopped asking for higher vswing
levels after it asked for 0 vs+2 pe, when the max vs is 2 for instance.
Matches the spec:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 573f93779449..aa7af531bcb8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -72,8 +72,9 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_d=
p,
>  	if (p >=3D preemph_max)
>  		p =3D preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
>  =

> -	voltage_max =3D min(intel_dp->voltage_max(intel_dp),
> -			  dp_voltage_max(p));
> +	v =3D min(v, dp_voltage_max(p));
> +
> +	voltage_max =3D intel_dp->voltage_max(intel_dp);
>  	if (v >=3D voltage_max)
>  		v =3D voltage_max | DP_TRAIN_MAX_SWING_REACHED;
>  =

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
