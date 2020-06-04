Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1F91EE90F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 19:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FA56E51B;
	Thu,  4 Jun 2020 17:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB656E51B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 17:02:01 +0000 (UTC)
IronPort-SDR: f+rdOv0KrHlnxs7N3DeKsH+XoeYgbN6RrEOrPWePJp9mCsGjIuRN9Ahx/KXr1Ng02PByM7kixf
 e5sKcv2W+PAA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 10:02:00 -0700
IronPort-SDR: BkXgUFlTIZtqcBQex7Ar6qnu4wuAf/3MluVthQr3ja5TNgPbGaeXWlqsrwoHxBFXfcwY2W4VJt
 0rYps0q5bNsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="273169519"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Jun 2020 10:01:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 20:01:57 +0300
Date: Thu, 4 Jun 2020 20:01:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604170157.GZ6112@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603211529.3005059-3-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 02/15] drm/i915/rkl: Program BW_BUDDY0
 registers instead of BW_BUDDY1/2
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

On Wed, Jun 03, 2020 at 02:15:16PM -0700, Matt Roper wrote:
> RKL uses the same BW_BUDDY programming table as TGL, but programs the
> values into a single set BUDDY0 set of registers rather than the
> BUDDY1/BUDDY2 sets used by TGL.

Maybe we just want some kind of HAS_ABOX() so we could use the same
thing here and in the ABOX_CTL programming?

> =

> Bspec: 49218
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 44 +++++++++++--------
>  drivers/gpu/drm/i915/i915_reg.h               | 14 ++++--
>  2 files changed, 35 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 72312b67b57a..2c1ce50b572b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5254,7 +5254,7 @@ static void tgl_bw_buddy_init(struct drm_i915_priva=
te *dev_priv)
>  	enum intel_dram_type type =3D dev_priv->dram_info.type;
>  	u8 num_channels =3D dev_priv->dram_info.num_channels;
>  	const struct buddy_page_mask *table;
> -	int i;
> +	int config, min_buddy, max_buddy, i;
>  =

>  	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
>  		/* Wa_1409767108: tgl */
> @@ -5262,29 +5262,35 @@ static void tgl_bw_buddy_init(struct drm_i915_pri=
vate *dev_priv)
>  	else
>  		table =3D tgl_buddy_page_masks;
>  =

> -	for (i =3D 0; table[i].page_mask !=3D 0; i++)
> -		if (table[i].num_channels =3D=3D num_channels &&
> -		    table[i].type =3D=3D type)
> +	if (IS_ROCKETLAKE(dev_priv)) {
> +		min_buddy =3D max_buddy =3D 0;
> +	} else {
> +		min_buddy =3D 1;
> +		max_buddy =3D 2;
> +	}
> +
> +	for (config =3D 0; table[config].page_mask !=3D 0; config++)
> +		if (table[config].num_channels =3D=3D num_channels &&
> +		    table[config].type =3D=3D type)
>  			break;
>  =

> -	if (table[i].page_mask =3D=3D 0) {
> +	if (table[config].page_mask =3D=3D 0) {
>  		drm_dbg(&dev_priv->drm,
>  			"Unknown memory configuration; disabling address buddy logic.\n");
> -		intel_de_write(dev_priv, BW_BUDDY1_CTL, BW_BUDDY_DISABLE);
> -		intel_de_write(dev_priv, BW_BUDDY2_CTL, BW_BUDDY_DISABLE);
> +		for (i =3D min_buddy; i <=3D max_buddy; i++)
> +			intel_de_write(dev_priv, BW_BUDDY_CTL(i),
> +				       BW_BUDDY_DISABLE);
>  	} else {
> -		intel_de_write(dev_priv, BW_BUDDY1_PAGE_MASK,
> -			       table[i].page_mask);
> -		intel_de_write(dev_priv, BW_BUDDY2_PAGE_MASK,
> -			       table[i].page_mask);
> -
> -		/* Wa_22010178259:tgl */
> -		intel_de_rmw(dev_priv, BW_BUDDY1_CTL,
> -			     BW_BUDDY_TLB_REQ_TIMER_MASK,
> -			     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8));
> -		intel_de_rmw(dev_priv, BW_BUDDY2_CTL,
> -			     BW_BUDDY_TLB_REQ_TIMER_MASK,
> -			     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8));
> +		for (i =3D min_buddy; i <=3D max_buddy; i++) {
> +			intel_de_write(dev_priv, BW_BUDDY_PAGE_MASK(i),
> +				       table[config].page_mask);
> +
> +			/* Wa_22010178259:tgl,rkl */
> +			intel_de_rmw(dev_priv, BW_BUDDY_CTL(i),
> +				     BW_BUDDY_TLB_REQ_TIMER_MASK,
> +				     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK,
> +						    0x8));
> +		}
>  	}
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 578cfe11cbb9..3e79cefc510a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7837,13 +7837,19 @@ enum {
>  #define  WAIT_FOR_PCH_RESET_ACK		(1 << 1)
>  #define  WAIT_FOR_PCH_FLR_ACK		(1 << 0)
>  =

> -#define BW_BUDDY1_CTL			_MMIO(0x45140)
> -#define BW_BUDDY2_CTL			_MMIO(0x45150)
> +#define _BW_BUDDY0_CTL			0x45130
> +#define _BW_BUDDY1_CTL			0x45140
> +#define BW_BUDDY_CTL(x)			_MMIO(_PICK_EVEN(x, \
> +							 _BW_BUDDY0_CTL, \
> +							 _BW_BUDDY1_CTL))
>  #define   BW_BUDDY_DISABLE		REG_BIT(31)
>  #define   BW_BUDDY_TLB_REQ_TIMER_MASK	REG_GENMASK(21, 16)
>  =

> -#define BW_BUDDY1_PAGE_MASK		_MMIO(0x45144)
> -#define BW_BUDDY2_PAGE_MASK		_MMIO(0x45154)
> +#define _BW_BUDDY0_PAGE_MASK		0x45134
> +#define _BW_BUDDY1_PAGE_MASK		0x45144
> +#define BW_BUDDY_PAGE_MASK(x)		_MMIO(_PICK_EVEN(x, \
> +							 _BW_BUDDY0_PAGE_MASK, \
> +							 _BW_BUDDY1_PAGE_MASK))
>  =

>  #define HSW_NDE_RSTWRN_OPT	_MMIO(0x46408)
>  #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
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
