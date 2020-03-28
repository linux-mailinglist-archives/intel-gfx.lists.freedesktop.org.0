Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9671964EE
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 11:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6C66EAC7;
	Sat, 28 Mar 2020 10:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96F56EAC6
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 10:02:17 +0000 (UTC)
IronPort-SDR: 4pqQ5HJl6R9axyD9+Qlnw5B80TBL0E5eiQiq0WY9HUGqW03jW9gT2t2nvOOR33mkk+U8x7fn8G
 BFueItKTTX7A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 03:02:17 -0700
IronPort-SDR: NWKvJ2lIaw5ndWh8tZUMS4WM+ukrtB2Oxj/XpctXlI1xZNHc+k8f0dmJ2erCB4dPItNe32YIo4
 ZwtyWsFwfZbg==
X-IronPort-AV: E=Sophos;i="5.72,315,1580803200"; d="scan'208";a="241174537"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 03:02:15 -0700
Date: Sat, 28 Mar 2020 12:01:10 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200328100110.GB12322@ideak-desk.fi.intel.com>
References: <20200324201429.29153-1-jose.souza@intel.com>
 <20200324201429.29153-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201429.29153-2-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 2/6] drm/i915/display: Add
 intel_display_power_get_without_ack()
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 24, 2020 at 01:14:25PM -0700, Jos=E9 Roberto de Souza wrote:
> To implement ICL TC static sequences is required to get the port aux
> powerwell without wait for hardware ack.

I think we should block tc_cold whenever holding a legacy AUX power ref
and handle the delayed ack in the power_well->enable hook.

> =

> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 71 +++++++++++++++----
>  .../drm/i915/display/intel_display_power.h    | 12 ++++
>  2 files changed, 71 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 246e406bb385..9035b220dfa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -157,14 +157,24 @@ intel_display_power_domain_str(enum intel_display_p=
ower_domain domain)
>  	}
>  }
>  =

> -static void intel_power_well_enable(struct drm_i915_private *dev_priv,
> -				    struct i915_power_well *power_well)
> +static void _intel_power_well_enable(struct drm_i915_private *dev_priv,
> +				     struct i915_power_well *power_well,
> +				     bool wait_ack)
>  {
>  	drm_dbg_kms(&dev_priv->drm, "enabling %s\n", power_well->desc->name);
> -	power_well->desc->ops->enable(dev_priv, power_well);
> +	if (wait_ack || !power_well->desc->ops->enable_without_ack)
> +		power_well->desc->ops->enable(dev_priv, power_well);
> +	else
> +		power_well->desc->ops->enable_without_ack(dev_priv, power_well);
>  	power_well->hw_enabled =3D true;
>  }
>  =

> +static void intel_power_well_enable(struct drm_i915_private *dev_priv,
> +				    struct i915_power_well *power_well)
> +{
> +	_intel_power_well_enable(dev_priv, power_well, true);
> +}
> +
>  static void intel_power_well_disable(struct drm_i915_private *dev_priv,
>  				     struct i915_power_well *power_well)
>  {
> @@ -174,10 +184,11 @@ static void intel_power_well_disable(struct drm_i91=
5_private *dev_priv,
>  }
>  =

>  static void intel_power_well_get(struct drm_i915_private *dev_priv,
> -				 struct i915_power_well *power_well)
> +				 struct i915_power_well *power_well,
> +				 bool wait_ack)
>  {
>  	if (!power_well->count++)
> -		intel_power_well_enable(dev_priv, power_well);
> +		_intel_power_well_enable(dev_priv, power_well, wait_ack);
>  }
>  =

>  static void intel_power_well_put(struct drm_i915_private *dev_priv,
> @@ -353,8 +364,9 @@ static void gen9_wait_for_power_well_fuses(struct drm=
_i915_private *dev_priv,
>  					  SKL_FUSE_PG_DIST_STATUS(pg), 1));
>  }
>  =

> -static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
> -				  struct i915_power_well *power_well)
> +static void _hsw_power_well_enable(struct drm_i915_private *dev_priv,
> +				   struct i915_power_well *power_well,
> +				   bool wait_ack)
>  {
>  	const struct i915_power_well_regs *regs =3D power_well->desc->hsw.regs;
>  	int pw_idx =3D power_well->desc->hsw.idx;
> @@ -379,7 +391,8 @@ static void hsw_power_well_enable(struct drm_i915_pri=
vate *dev_priv,
>  	val =3D intel_de_read(dev_priv, regs->driver);
>  	intel_de_write(dev_priv, regs->driver,
>  		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> -	hsw_wait_for_power_well_enable(dev_priv, power_well);
> +	if (wait_ack)
> +		hsw_wait_for_power_well_enable(dev_priv, power_well);
>  =

>  	/* Display WA #1178: cnl */
>  	if (IS_CANNONLAKE(dev_priv) &&
> @@ -398,6 +411,12 @@ static void hsw_power_well_enable(struct drm_i915_pr=
ivate *dev_priv,
>  				   power_well->desc->hsw.has_vga);
>  }
>  =

> +static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
> +				  struct i915_power_well *power_well)
> +{
> +	_hsw_power_well_enable(dev_priv, power_well, true);
> +}
> +
>  static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
>  				   struct i915_power_well *power_well)
>  {
> @@ -1960,7 +1979,8 @@ intel_display_power_grab_async_put_ref(struct drm_i=
915_private *dev_priv,
>  =

>  static void
>  __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
> -				 enum intel_display_power_domain domain)
> +				 enum intel_display_power_domain domain,
> +				 bool wait_ack)
>  {
>  	struct i915_power_domains *power_domains =3D &dev_priv->power_domains;
>  	struct i915_power_well *power_well;
> @@ -1969,7 +1989,7 @@ __intel_display_power_get_domain(struct drm_i915_pr=
ivate *dev_priv,
>  		return;
>  =

>  	for_each_power_domain_well(dev_priv, power_well, BIT_ULL(domain))
> -		intel_power_well_get(dev_priv, power_well);
> +		intel_power_well_get(dev_priv, power_well, wait_ack);
>  =

>  	power_domains->domain_use_count[domain]++;
>  }
> @@ -1993,7 +2013,34 @@ intel_wakeref_t intel_display_power_get(struct drm=
_i915_private *dev_priv,
>  	intel_wakeref_t wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
>  =

>  	mutex_lock(&power_domains->lock);
> -	__intel_display_power_get_domain(dev_priv, domain);
> +	__intel_display_power_get_domain(dev_priv, domain, true);
> +	mutex_unlock(&power_domains->lock);
> +
> +	return wakeref;
> +}
> +
> +/**
> + * intel_display_power_get_without_ack - grab a power domain reference w=
ithout
> + * wait for HW ack
> + * @dev_priv: i915 device instance
> + * @domain: power domain to reference
> + *
> + * This function grabs a power domain reference for @domain and ensures =
that the
> + * power domain and all its parents are powered up but it don't wait for
> + * hardware ack if supported by each powerwell. Users should only grab a
> + * reference to the innermost power domain they need.
> + *
> + * Any power domain reference obtained by this function must have a symm=
etric
> + * call to intel_display_power_put() to release the reference again.
> + */
> +intel_wakeref_t intel_display_power_get_without_ack(struct drm_i915_priv=
ate *dev_priv,
> +						    enum intel_display_power_domain domain)
> +{
> +	struct i915_power_domains *power_domains =3D &dev_priv->power_domains;
> +	intel_wakeref_t wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> +
> +	mutex_lock(&power_domains->lock);
> +	__intel_display_power_get_domain(dev_priv, domain, false);
>  	mutex_unlock(&power_domains->lock);
>  =

>  	return wakeref;
> @@ -2026,7 +2073,7 @@ intel_display_power_get_if_enabled(struct drm_i915_=
private *dev_priv,
>  	mutex_lock(&power_domains->lock);
>  =

>  	if (__intel_display_power_is_enabled(dev_priv, domain)) {
> -		__intel_display_power_get_domain(dev_priv, domain);
> +		__intel_display_power_get_domain(dev_priv, domain, true);
>  		is_enabled =3D true;
>  	} else {
>  		is_enabled =3D false;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index da64a5edae7a..5db86cc862c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -129,6 +129,16 @@ struct i915_power_well_ops {
>  	 */
>  	void (*enable)(struct drm_i915_private *dev_priv,
>  		       struct i915_power_well *power_well);
> +
> +	/*
> +	 * Enable the well and resources that depend on it (for example
> +	 * interrupts located on the well) without reading HW ack. Called after
> +	 * the 0->1 refcount transition.
> +	 * This will be used by TC subsystem and it is a optional hook.
> +	 */
> +	void (*enable_without_ack)(struct drm_i915_private *dev_priv,
> +				   struct i915_power_well *power_well);
> +
>  	/*
>  	 * Disable the well and resources that depend on it. Called after
>  	 * the 1->0 refcount transition.
> @@ -270,6 +280,8 @@ bool __intel_display_power_is_enabled(struct drm_i915=
_private *dev_priv,
>  				      enum intel_display_power_domain domain);
>  intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_pri=
v,
>  					enum intel_display_power_domain domain);
> +intel_wakeref_t intel_display_power_get_without_ack(struct drm_i915_priv=
ate *dev_priv,
> +						    enum intel_display_power_domain domain);
>  intel_wakeref_t
>  intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
>  				   enum intel_display_power_domain domain);
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
