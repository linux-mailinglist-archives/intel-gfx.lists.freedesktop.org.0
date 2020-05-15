Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4761D55C4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 18:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF826ECF0;
	Fri, 15 May 2020 16:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37BE6ECEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 16:21:09 +0000 (UTC)
IronPort-SDR: XD7JaMGvBX1H+Z6qc7/XvtEFSHRYacs41/is3mfeMKsgDlE6Fl/Ki5csRYqdZ3Er6omC0b66JQ
 NNOgSskwpPjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 09:21:09 -0700
IronPort-SDR: yWlc2JpfAU5yjlnpbMcfC912tnHbvl4HDAJvZzGQZB+QHSAa4z+B+C0XiRtFcj9CpFYLak1ZNA
 d6yj4Vge+W0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,395,1583222400"; d="scan'208";a="307461969"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 15 May 2020 09:21:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 May 2020 19:21:06 +0300
Date: Fri, 15 May 2020 19:21:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200515162106.GL6112@intel.com>
References: <20200514204553.27193-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514204553.27193-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix AUX power domain toggling
 across TypeC mode resets
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

On Thu, May 14, 2020 at 11:45:53PM +0300, Imre Deak wrote:
> Make sure to select the port's AUX power domain while holding the TC
> port lock. The domain depends on the port's current TC mode, which may
> get changed under us if we're not holding the lock.

Can we toss in a lockdep assert?

Did this by any chance help with the MST issues you were seeing?

> =

> This was left out from
> commit 8c10e2262663 ("drm/i915: Keep the TypeC port mode fixed for detect=
/AUX transfers")
> =

> Cc: <stable@vger.kernel.org> # v5.4+
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 408c3c1c5e81..40d42dcff0b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1359,8 +1359,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	bool is_tc_port =3D intel_phy_is_tc(i915, phy);
>  	i915_reg_t ch_ctl, ch_data[5];
>  	u32 aux_clock_divider;
> -	enum intel_display_power_domain aux_domain =3D
> -		intel_aux_power_domain(intel_dig_port);
> +	enum intel_display_power_domain aux_domain;
>  	intel_wakeref_t aux_wakeref;
>  	intel_wakeref_t pps_wakeref;
>  	int i, ret, recv_bytes;
> @@ -1375,6 +1374,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	if (is_tc_port)
>  		intel_tc_port_lock(intel_dig_port);
>  =

> +	aux_domain =3D intel_aux_power_domain(intel_dig_port);
> +
>  	aux_wakeref =3D intel_display_power_get(i915, aux_domain);
>  	pps_wakeref =3D pps_lock(intel_dp);
>  =

> -- =

> 2.23.1
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
