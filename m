Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8D021F6A2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 18:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912FC6E170;
	Tue, 14 Jul 2020 16:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0EF36E170
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 16:05:35 +0000 (UTC)
IronPort-SDR: JQtVTapsb2TenF8Q/tDzi/xRUjZbmc8g/HNRyLujx6eybbLasaSH7hvMQKKR63ljdwqDqD/rOq
 5vZDUxxHu/7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="129028296"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="129028296"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 09:05:35 -0700
IronPort-SDR: TAN4OpwSmI501FmQoTviKYDZ8fqagI99dfw2RMjRqkFDV6WBZs+sjiNGUPqcojYD37GClQ+C39
 8a3hQzVc6H0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="270038586"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 14 Jul 2020 09:05:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 19:05:32 +0300
Date: Tue, 14 Jul 2020 19:05:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200714160532.GK6112@intel.com>
References: <20200714153141.10280-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714153141.10280-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ddi: Don't frob the DP link
 scramble disabling flag
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

On Tue, Jul 14, 2020 at 06:31:40PM +0300, Imre Deak wrote:
> According to BSpec this flag should not be changed while the DDI
> function is enabled. On BDW+ the DP_TP_CTL register spec also states it
> explicitly that the HW takes care of enabling/disabling the scrambling
> for training patterns (and it must stay enabled for normal pixel
> output). Assume that this HW automatic handling of scrambling is also
> true for HSW.

It is at least marked as debug only for hsw.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> BSpec: 8013, 7557, 50484
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 2c484b55bcdf..c467f18d5e1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4037,8 +4037,7 @@ static void intel_ddi_prepare_link_retrain(struct i=
ntel_dp *intel_dp)
>  			intel_wait_ddi_buf_idle(dev_priv, port);
>  	}
>  =

> -	dp_tp_ctl =3D DP_TP_CTL_ENABLE |
> -		    DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_SCRAMBLE_DISABLE;
> +	dp_tp_ctl =3D DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
>  	if (intel_dp->link_mst)
>  		dp_tp_ctl |=3D DP_TP_CTL_MODE_MST;
>  	else {
> @@ -4066,11 +4065,6 @@ static void intel_ddi_set_link_train(struct intel_=
dp *intel_dp,
>  =

>  	temp =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
>  =

> -	if (dp_train_pat & DP_LINK_SCRAMBLING_DISABLE)
> -		temp |=3D DP_TP_CTL_SCRAMBLE_DISABLE;
> -	else
> -		temp &=3D ~DP_TP_CTL_SCRAMBLE_DISABLE;
> -
>  	temp &=3D ~DP_TP_CTL_LINK_TRAIN_MASK;
>  	switch (dp_train_pat & train_pat_mask) {
>  	case DP_TRAINING_PATTERN_DISABLE:
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
