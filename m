Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 652A2219124
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 22:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC406E042;
	Wed,  8 Jul 2020 20:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ACD56E042
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 20:08:51 +0000 (UTC)
IronPort-SDR: GO9KUx12WPWaV820gQbDAGI80qxDJ9uLiQQC+OaWKIMfLwPqseNY6bCy/St3llm7wM6z/MZ/7i
 boQJdmRi3BUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="149389609"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="149389609"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 13:08:48 -0700
IronPort-SDR: x2zox5NG+P2LAof/spLLDx62PkqKd0b1RVKodFtkj4Q1O7DF3ndrkTmLPweveLNmHEJLCxl+E2
 YStxi9edtPmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="388919002"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jul 2020 13:08:48 -0700
Date: Wed, 8 Jul 2020 13:10:37 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200708201037.GA1885@intel.com>
References: <20200701221052.8946-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701221052.8946-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915/dp: Helper for checking
 DDI_BUF_CTL Idle status
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

Pushed to dinq, thanks for the reviews

Manasi

On Wed, Jul 01, 2020 at 03:10:51PM -0700, Manasi Navare wrote:
> Modify the helper to add a fixed delay or poll with timeout
> based on platform specification to check for either Idle bit
> set (DDI_BUF_CTL is idle for disable case)
> =

> v2:
> * Use 2 separate functions or idle and active (Ville)
> v3:
> * Change the timeout to 16usecs (Ville)
> v4:
> * Change the timeout 8, follow spec (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 025d4052f6f8..a7de1344db69 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1184,16 +1184,15 @@ static void intel_prepare_hdmi_ddi_buffers(struct=
 intel_encoder *encoder,
>  static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
>  				    enum port port)
>  {
> -	i915_reg_t reg =3D DDI_BUF_CTL(port);
> -	int i;
> -
> -	for (i =3D 0; i < 16; i++) {
> -		udelay(1);
> -		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
> -			return;
> +	if (IS_BROXTON(dev_priv)) {
> +		udelay(16);
> +		return;
>  	}
> -	drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit\n",
> -		port_name(port));
> +
> +	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> +			 DDI_BUF_IS_IDLE), 8))
> +		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\n",
> +			port_name(port));
>  }
>  =

>  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> -- =

> 2.19.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
