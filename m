Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 555BD18A899
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 23:52:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138CD6E97C;
	Wed, 18 Mar 2020 22:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8AB16E97C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 22:52:06 +0000 (UTC)
IronPort-SDR: fCfD+DpjS3e9Mcwj1ZNcxL1IIUoGF6JWqwTjcBsWfa+JYBSp60iBj6Hm7Ux55L3NZP7gZWz1bS
 ZFMjVT0/L2WQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 15:52:06 -0700
IronPort-SDR: CXHmMvK+wKDWMEXCL8GckF+kTMHP7qOrc36AzVE9+bzv263rBRvm6c5zBZ7u0bLAWmlkGMvkrL
 cEMZWptjgM0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="355846598"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2020 15:52:05 -0700
Date: Wed, 18 Mar 2020 15:53:40 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200318225339.GE6675@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313164831.5980-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: Use REG_FIELD_PREP() & co.
 for TRANS_DDI_FUNC_CTL2
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

On Fri, Mar 13, 2020 at 06:48:23PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Clean up the TRANS_DDI_FUNC_CTL2 programming/readout by
> using REG_FIELD_PREP() & co.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c |  6 ++----
>  drivers/gpu/drm/i915/i915_reg.h          | 10 ++++------
>  2 files changed, 6 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 39f3e9452aad..8bb6c583abb8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1573,9 +1573,7 @@ void intel_ddi_enable_transcoder_func(const struct =
intel_crtc_state *crtc_state)
>  				master_select =3D master_transcoder + 1;
>  =

>  			ctl2 |=3D PORT_SYNC_MODE_ENABLE |
> -				(PORT_SYNC_MODE_MASTER_SELECT(master_select) &
> -				 PORT_SYNC_MODE_MASTER_SELECT_MASK) <<
> -				PORT_SYNC_MODE_MASTER_SELECT_SHIFT;
> +				PORT_SYNC_MODE_MASTER_SELECT(master_select);
>  		}
>  =

>  		intel_de_write(dev_priv,
> @@ -3854,7 +3852,7 @@ static enum transcoder transcoder_master_readout(st=
ruct drm_i915_private *dev_pr
>  	if ((ctl2 & PORT_SYNC_MODE_ENABLE) =3D=3D 0)
>  		return INVALID_TRANSCODER;
>  =

> -	master_select =3D ctl2 & PORT_SYNC_MODE_MASTER_SELECT_MASK;
> +	master_select =3D REG_FIELD_GET(PORT_SYNC_MODE_MASTER_SELECT_MASK, ctl2=
);
>  =

>  	if (master_select =3D=3D 0)
>  		return TRANSCODER_EDP;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 309cb7d96b35..fc5c00bfed87 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9726,12 +9726,10 @@ enum skl_power_gate {
>  #define _TRANS_DDI_FUNC_CTL2_EDP	0x6f404
>  #define _TRANS_DDI_FUNC_CTL2_DSI0	0x6b404
>  #define _TRANS_DDI_FUNC_CTL2_DSI1	0x6bc04
> -#define TRANS_DDI_FUNC_CTL2(tran)	_MMIO_TRANS2(tran, \
> -						     _TRANS_DDI_FUNC_CTL2_A)
> -#define  PORT_SYNC_MODE_ENABLE			(1 << 4)
> -#define  PORT_SYNC_MODE_MASTER_SELECT(x)	((x) << 0)
> -#define  PORT_SYNC_MODE_MASTER_SELECT_MASK	(0x7 << 0)
> -#define  PORT_SYNC_MODE_MASTER_SELECT_SHIFT	0
> +#define TRANS_DDI_FUNC_CTL2(tran)	_MMIO_TRANS2(tran, _TRANS_DDI_FUNC_CTL=
2_A)
> +#define  PORT_SYNC_MODE_ENABLE			REG_BIT(4)
> +#define  PORT_SYNC_MODE_MASTER_SELECT_MASK	REG_GENMASK(2, 0)
> +#define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_M=
ASTER_SELECT_MASK, (x))
>  =

>  /* DisplayPort Transport Control */
>  #define _DP_TP_CTL_A			0x64040
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
