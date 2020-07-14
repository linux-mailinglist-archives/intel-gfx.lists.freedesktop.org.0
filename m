Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E86421F6B7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 18:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B836E40C;
	Tue, 14 Jul 2020 16:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E986E40C
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 16:08:37 +0000 (UTC)
IronPort-SDR: 7roAG6B+jqTrSzq3uk0gt3KR11x1ijXsr7CJXaw6Ur126GozkNNLAZL7879d8wYpgZDap3AXYm
 EAgc3HizrBmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="137084157"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="137084157"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 09:08:36 -0700
IronPort-SDR: eDj7aRDI6v2/mdHQPAJrPgm4CiSUH++3KwH/mwrF3yV53jHXwEeW7ZVjgcVyuxGLxYZY508YYN
 i0ULXSL9RLRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="285802271"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 14 Jul 2020 09:08:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 19:08:33 +0300
Date: Tue, 14 Jul 2020 19:08:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200714160833.GL6112@intel.com>
References: <20200714153141.10280-1-imre.deak@intel.com>
 <20200714153141.10280-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714153141.10280-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ddi: Don't rewrite DDI_BUF_CTL
 reg during DP link training
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

On Tue, Jul 14, 2020 at 06:31:41PM +0300, Imre Deak wrote:
> The driver enables the DDI function in the DDI_BUF_CTL register before
> starting the link training and disables it when disabling the output. It
> also gets disabled/re-enabled during link re-trainining.
> =

> Except of the above the value we program to the register (intel_dp->DP)
> doesn't change, so no need to reprogram the register when changing the
> link training patterns.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

The only concern I had was the buf trans stuff for hsw/bdw/skl,
but looks like hsw_set_signal_levels() does everything we need.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 4 ----
>  1 file changed, 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c467f18d5e1b..424d59671561 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4060,7 +4060,6 @@ static void intel_ddi_set_link_train(struct intel_d=
p *intel_dp,
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u8 train_pat_mask =3D drm_dp_training_pattern_mask(intel_dp->dpcd);
> -	enum port port =3D dp_to_dig_port(intel_dp)->base.port;
>  	u32 temp;
>  =

>  	temp =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
> @@ -4085,9 +4084,6 @@ static void intel_ddi_set_link_train(struct intel_d=
p *intel_dp,
>  	}
>  =

>  	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, temp);
> -
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> -	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>  }
>  =

>  static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp)
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
