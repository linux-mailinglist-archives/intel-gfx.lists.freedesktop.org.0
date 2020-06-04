Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7BB1EEA4C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 20:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C226E546;
	Thu,  4 Jun 2020 18:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764AE6E546
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 18:31:43 +0000 (UTC)
IronPort-SDR: hBGeVQY2C/ogqLz6l9IdjVnNRx0F5PuhOeyldvS35SWpoTrOBCMoLUzIhd+H+kZA1tdO1tXX7q
 lVe1W+ybVTJg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 11:31:42 -0700
IronPort-SDR: 4GD/7+5HmDEX01R1LXDC5NYwh2S4s1nMGxcEE9/wNLB+y/a/POe72gW/24/l+UlCO+0eO7fqcv
 50Rca2pGfiTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="258437928"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 Jun 2020 11:31:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 21:31:39 +0300
Date: Thu, 4 Jun 2020 21:31:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604183139.GC6112@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603211529.3005059-4-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 03/15] drm/i915/rkl: RKL has no
 MBUS_ABOX_CTL{1, 2}
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

On Wed, Jun 03, 2020 at 02:15:17PM -0700, Matt Roper wrote:
> Although RKL is a gen12 platform, it doesn't have the two extra
> instances of the ABOX control register; we should only program
> the single MBUS_ABOX_CTL on this platform.
> =

> Bspec: 50096
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 2c1ce50b572b..37847b3d733c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4772,7 +4772,7 @@ static void icl_mbus_init(struct drm_i915_private *=
dev_priv)
>  		MBUS_ABOX_BW_CREDIT(1);
>  =

>  	intel_de_rmw(dev_priv, MBUS_ABOX_CTL, mask, val);
> -	if (INTEL_GEN(dev_priv) >=3D 12) {
> +	if (INTEL_GEN(dev_priv) >=3D 12 && !IS_ROCKETLAKE(dev_priv)) {
>  		intel_de_rmw(dev_priv, MBUS_ABOX1_CTL, mask, val);
>  		intel_de_rmw(dev_priv, MBUS_ABOX2_CTL, mask, val);
>  	}

Can't find anyting definitive in bspec, so not 100% sure but
since you say it gives unclaim reg errors it seems correct.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Though I think I'd like to see that HAS_ABOX() thing I suggested
and use it here as well.

> -- =

> 2.24.1
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
