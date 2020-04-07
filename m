Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9331A1013
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 17:21:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01216E895;
	Tue,  7 Apr 2020 15:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6326E892
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 15:20:57 +0000 (UTC)
IronPort-SDR: SfV0NFibA5hXrcwQu5yJt1+VnLoVrW/iA8W+XpOuwdtixnan+gvGjhidt/LDWqo/8vsqpWuWU0
 vWzV1DS6CZqg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:20:56 -0700
IronPort-SDR: YwtKHACexa+ChE4eenpMg7MXhOWMk6SdgX4HoDbQH5PHIVwlzhUw6Ik/rW2LSoEq+5YBrFSOsI
 NSgb3xVfDtKg==
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="397887902"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:20:55 -0700
Date: Tue, 7 Apr 2020 18:20:14 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407152014.GC21484@ideak-desk.fi.intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
 <20200407011157.362092-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407011157.362092-3-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 3/8] drm/i915/display: Split
 hsw_power_well_enable() into two
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

On Mon, Apr 06, 2020 at 06:11:52PM -0700, Jos=E9 Roberto de Souza wrote:
> This is a preparation for ICL TC cold exit sequences.
> =

> v2:
> - renamed new functions to hsw_power_well_enable_prepare()/complete()
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../drm/i915/display/intel_display_power.c    | 39 +++++++++++++++----
>  1 file changed, 32 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index f2f42b5960df..62e49f06d467 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -380,16 +380,16 @@ static void gen9_wait_for_power_well_fuses(struct d=
rm_i915_private *dev_priv,
>  					  SKL_FUSE_PG_DIST_STATUS(pg), 1));
>  }
>  =

> -static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
> -				  struct i915_power_well *power_well)
> +static void hsw_power_well_enable_prepare(struct drm_i915_private *dev_p=
riv,
> +					  struct i915_power_well *power_well)
>  {
>  	const struct i915_power_well_regs *regs =3D power_well->desc->hsw.regs;
>  	int pw_idx =3D power_well->desc->hsw.idx;
> -	bool wait_fuses =3D power_well->desc->hsw.has_fuses;
> -	enum skl_power_gate uninitialized_var(pg);
>  	u32 val;
>  =

> -	if (wait_fuses) {
> +	if (power_well->desc->hsw.has_fuses) {
> +		enum skl_power_gate pg;
> +
>  		pg =3D INTEL_GEN(dev_priv) >=3D 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
>  						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
>  		/*
> @@ -406,25 +406,46 @@ static void hsw_power_well_enable(struct drm_i915_p=
rivate *dev_priv,
>  	val =3D intel_de_read(dev_priv, regs->driver);
>  	intel_de_write(dev_priv, regs->driver,
>  		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> +}
> +
> +static void hsw_power_well_enable_complete(struct drm_i915_private *dev_=
priv,
> +					   struct i915_power_well *power_well)
> +{
> +	int pw_idx =3D power_well->desc->hsw.idx;
> +
>  	hsw_wait_for_power_well_enable(dev_priv, power_well);
>  =

>  	/* Display WA #1178: cnl */
>  	if (IS_CANNONLAKE(dev_priv) &&
>  	    pw_idx >=3D GLK_PW_CTL_IDX_AUX_B &&
>  	    pw_idx <=3D CNL_PW_CTL_IDX_AUX_F) {
> +		u32 val;
> +
>  		val =3D intel_de_read(dev_priv, CNL_AUX_ANAOVRD1(pw_idx));
>  		val |=3D CNL_AUX_ANAOVRD1_ENABLE | CNL_AUX_ANAOVRD1_LDO_BYPASS;
>  		intel_de_write(dev_priv, CNL_AUX_ANAOVRD1(pw_idx), val);
>  	}
>  =

> -	if (wait_fuses)
> +	if (power_well->desc->hsw.has_fuses) {
> +		enum skl_power_gate pg;
> +
> +		pg =3D INTEL_GEN(dev_priv) >=3D 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
> +						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
>  		gen9_wait_for_power_well_fuses(dev_priv, pg);
> +	}
>  =

>  	hsw_power_well_post_enable(dev_priv,
>  				   power_well->desc->hsw.irq_pipe_mask,
>  				   power_well->desc->hsw.has_vga);
>  }
>  =

> +static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
> +				  struct i915_power_well *power_well)
> +{
> +	hsw_power_well_enable_prepare(dev_priv, power_well);
> +	hsw_power_well_enable_complete(dev_priv, power_well);
> +}
> +
>  static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
>  				   struct i915_power_well *power_well)
>  {
> @@ -570,7 +591,11 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_pri=
vate *dev_priv,
>  		val |=3D DP_AUX_CH_CTL_TBT_IO;
>  	intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
>  =

> -	hsw_power_well_enable(dev_priv, power_well);
> +	hsw_power_well_enable_prepare(dev_priv, power_well);
> +
> +	/* TODO ICL TC cold handling */
> +
> +	hsw_power_well_enable_complete(dev_priv, power_well);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12 && !power_well->desc->hsw.is_tc_tbt) {
>  		enum tc_port tc_port;
> -- =

> 2.26.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
