Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 708EA1725C7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 18:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F596E859;
	Thu, 27 Feb 2020 17:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9F86E859
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 17:58:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 09:58:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="350731714"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 27 Feb 2020 09:58:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2020 19:58:07 +0200
Date: Thu, 27 Feb 2020 19:58:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200227175807.GX13686@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
 <20200226203455.23032-13-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226203455.23032-13-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915/hsw: Use the read-out
 WRPLL/SPLL state instead of reading out again
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

On Wed, Feb 26, 2020 at 10:34:54PM +0200, Imre Deak wrote:
> Instead of reading out the WRPLL/SPLL control values from HW, we can use
> the DPLL state that was already read out, or swapped-to.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index b87b4ff5de52..7e6da58a47c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -880,13 +880,10 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *s=
tate,
>  static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
>  				  const struct intel_shared_dpll *pll)
>  {
> -	i915_reg_t reg =3D pll->info->id =3D=3D DPLL_ID_WRPLL1 ?
> -					  WRPLL_CTL(0) : WRPLL_CTL(1);
>  	int refclk;
>  	int n, p, r;
> -	u32 wrpll;
> +	u32 wrpll =3D pll->state.hw_state.wrpll;
>  =

> -	wrpll =3D intel_de_read(dev_priv, reg);
>  	switch (wrpll & WRPLL_REF_MASK) {
>  	case WRPLL_REF_SPECIAL_HSW:
>  		/*
> @@ -1003,7 +1000,7 @@ static int hsw_ddi_spll_get_freq(struct drm_i915_pr=
ivate *i915,
>  {
>  	int link_clock =3D 0;
>  =

> -	switch (intel_de_read(i915, SPLL_CTL) & SPLL_FREQ_MASK) {
> +	switch (pll->state.hw_state.spll & SPLL_FREQ_MASK) {
>  	case SPLL_FREQ_810MHz:
>  		link_clock =3D 81000;
>  		break;
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
