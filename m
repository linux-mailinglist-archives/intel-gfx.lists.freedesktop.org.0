Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 431CE20D57E
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 21:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9568789F63;
	Mon, 29 Jun 2020 19:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29ECB89F63
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 19:20:10 +0000 (UTC)
IronPort-SDR: Vl50oR1xqfU1s5akmcCDZQ9kkXcguic1lTXMDqLJRuFWuBPGsYhyYOrrmd5pxjWESKIRtkZiA5
 v4zZRKiyzr4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="211122109"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="211122109"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 12:19:58 -0700
IronPort-SDR: QO0xu+dKCICWBgRFebX00WmT10QXLdckYi5i6IovfUe97Mlo1qh4xLZYFaXDSZHjfQ9XkqagGY
 YgFqa+iTujlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="264918915"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 29 Jun 2020 12:19:58 -0700
Date: Mon, 29 Jun 2020 12:21:31 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200629192131.GB16227@intel.com>
References: <20200626232641.4557-1-manasi.d.navare@intel.com>
 <20200626232641.4557-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200626232641.4557-2-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/dp: Helper to check for DDI
 BUF status to get active
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

@Ville, @Imre : addressed your review comments, could you please take a loo=
k?

Regards
Manasi

On Fri, Jun 26, 2020 at 04:26:41PM -0700, Manasi Navare wrote:
> Based on the platform, Bspec expects us to wait or poll with
> timeout for DDI BUF IDLE bit to be set to 0 (non idle) or get active
> after enabling DDI_BUF_CTL.
> =

> v4:
> * Use the timeout for GLK (Ville)
> v3:
> * Add a new function _active for DDI BUF CTL to be non idle (Ville)
> v2:
> * Based on platform, fixed delay or poll (Ville)
> * Use a helper to do this (Imre, Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 052a74625a61..94d57b57139b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1195,6 +1195,20 @@ static void intel_wait_ddi_buf_idle(struct drm_i91=
5_private *dev_priv,
>  			port_name(port));
>  }
>  =

> +static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
> +				      enum port port)
> +{
> +	if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv) ) {
> +		usleep_range(600, 1000);
> +		return;
> +	}
> +
> +	if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> +			  DDI_BUF_IS_IDLE), 600))
> +		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get active\=
n",
> +			port_name(port));
> +}
> +
>  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
>  {
>  	switch (pll->info->id) {
> @@ -4020,7 +4034,7 @@ static void intel_ddi_prepare_link_retrain(struct i=
ntel_dp *intel_dp)
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>  =

> -	udelay(600);
> +	intel_wait_ddi_buf_active(dev_priv, port);
>  }
>  =

>  static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
> -- =

> 2.19.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
