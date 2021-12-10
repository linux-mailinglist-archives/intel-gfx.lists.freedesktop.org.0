Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FD746FF4E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 12:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82D710E725;
	Fri, 10 Dec 2021 11:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3F710E724
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 11:03:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="237062491"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="237062491"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 03:03:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="516718779"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 03:03:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211209182109.29786-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
 <20211209182109.29786-3-ville.syrjala@linux.intel.com>
Date: Fri, 10 Dec 2021 13:03:19 +0200
Message-ID: <87tufg203s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/fbc: Loop through FBC
 instances in various places
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 09 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Convert i915->fbc into an array in preparation for
> multiple FBC instances, and loop through all instances
> in all places where the caller does not know which
> instance(s) (if any) are relevant. This is the case
> for eg. frontbuffer tracking and FIFO underrun hadling.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 166 +++++++++++-------
>  .../drm/i915/display/skl_universal_plane.c    |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   3 +-
>  4 files changed, 104 insertions(+), 69 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 85950ff67609..731f446bdf20 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -125,7 +125,7 @@ static struct intel_fbc *i9xx_plane_fbc(struct drm_i9=
15_private *dev_priv,
>  					enum i9xx_plane_id i9xx_plane)
>  {
>  	if (i9xx_plane_has_fbc(dev_priv, i9xx_plane))
> -		return dev_priv->fbc;
> +		return dev_priv->fbc[FBC_A];
>  	else
>  		return NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 8376f819071e..2f1a72f98c4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -49,6 +49,13 @@
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
>=20=20
> +#define for_each_fbc_id(__fbc_id) \
> +	for ((__fbc_id) =3D FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++)
> +
> +#define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
> +	for_each_fbc_id(__fbc_id) \
> +		for_each_if((__fbc) =3D (__dev_priv)->fbc[(__fbc_id)])
> +
>  struct intel_fbc_funcs {
>  	void (*activate)(struct intel_fbc *fbc);
>  	void (*deactivate)(struct intel_fbc *fbc);
> @@ -812,16 +819,16 @@ static void __intel_fbc_cleanup_cfb(struct intel_fb=
c *fbc)
>=20=20
>  void intel_fbc_cleanup(struct drm_i915_private *i915)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc;
> +	struct intel_fbc *fbc;
> +	enum fbc_id fbc_id;
>=20=20
> -	if (!fbc)
> -		return;
> +	for_each_intel_fbc(i915, fbc, fbc_id) {
> +		mutex_lock(&fbc->lock);
> +		__intel_fbc_cleanup_cfb(fbc);
> +		mutex_unlock(&fbc->lock);
>=20=20
> -	mutex_lock(&fbc->lock);
> -	__intel_fbc_cleanup_cfb(fbc);
> -	mutex_unlock(&fbc->lock);
> -
> -	kfree(fbc);
> +		kfree(fbc);
> +	}
>  }
>=20=20
>  static bool stride_is_valid(const struct intel_plane_state *plane_state)
> @@ -1307,36 +1314,39 @@ static unsigned int intel_fbc_get_frontbuffer_bit=
(struct intel_fbc *fbc)
>  		return fbc->possible_framebuffer_bits;
>  }
>=20=20
> +static void __intel_fbc_invalidate(struct intel_fbc *fbc,
> +				   unsigned int frontbuffer_bits,
> +				   enum fb_op_origin origin)
> +{
> +	if (origin =3D=3D ORIGIN_FLIP || origin =3D=3D ORIGIN_CURSOR_UPDATE)
> +		return;
> +
> +	mutex_lock(&fbc->lock);
> +
> +	fbc->busy_bits |=3D intel_fbc_get_frontbuffer_bit(fbc) & frontbuffer_bi=
ts;
> +
> +	if (fbc->state.plane && fbc->busy_bits)
> +		intel_fbc_deactivate(fbc, "frontbuffer write");
> +
> +	mutex_unlock(&fbc->lock);
> +}
> +
>  void intel_fbc_invalidate(struct drm_i915_private *i915,
>  			  unsigned int frontbuffer_bits,
>  			  enum fb_op_origin origin)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc;
> +	struct intel_fbc *fbc;
> +	enum fbc_id fbc_id;
>=20=20
> -	if (!fbc)
> -		return;
> +	for_each_intel_fbc(i915, fbc, fbc_id)
> +		__intel_fbc_invalidate(fbc, frontbuffer_bits, origin);
>=20=20
> -	if (origin =3D=3D ORIGIN_FLIP || origin =3D=3D ORIGIN_CURSOR_UPDATE)
> -		return;
> -
> -	mutex_lock(&fbc->lock);
> -
> -	fbc->busy_bits |=3D intel_fbc_get_frontbuffer_bit(fbc) & frontbuffer_bi=
ts;
> -
> -	if (fbc->state.plane && fbc->busy_bits)
> -		intel_fbc_deactivate(fbc, "frontbuffer write");
> -
> -	mutex_unlock(&fbc->lock);
>  }
>=20=20
> -void intel_fbc_flush(struct drm_i915_private *i915,
> -		     unsigned int frontbuffer_bits, enum fb_op_origin origin)
> +static void __intel_fbc_flush(struct intel_fbc *fbc,
> +			      unsigned int frontbuffer_bits,
> +			      enum fb_op_origin origin)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc;
> -
> -	if (!fbc)
> -		return;
> -
>  	mutex_lock(&fbc->lock);
>=20=20
>  	fbc->busy_bits &=3D ~frontbuffer_bits;
> @@ -1356,6 +1366,17 @@ void intel_fbc_flush(struct drm_i915_private *i915,
>  	mutex_unlock(&fbc->lock);
>  }
>=20=20
> +void intel_fbc_flush(struct drm_i915_private *i915,
> +		     unsigned int frontbuffer_bits,
> +		     enum fb_op_origin origin)
> +{
> +	struct intel_fbc *fbc;
> +	enum fbc_id fbc_id;
> +
> +	for_each_intel_fbc(i915, fbc, fbc_id)
> +		__intel_fbc_flush(fbc, frontbuffer_bits, origin);
> +}
> +
>  int intel_fbc_atomic_check(struct intel_atomic_state *state)
>  {
>  	struct intel_plane_state *plane_state;
> @@ -1483,15 +1504,15 @@ void intel_fbc_update(struct intel_atomic_state *=
state,
>   */
>  void intel_fbc_global_disable(struct drm_i915_private *i915)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc;
> +	struct intel_fbc *fbc;
> +	enum fbc_id fbc_id;
>=20=20
> -	if (!fbc)
> -		return;
> -
> -	mutex_lock(&fbc->lock);
> -	if (fbc->state.plane)
> -		__intel_fbc_disable(fbc);
> -	mutex_unlock(&fbc->lock);
> +	for_each_intel_fbc(i915, fbc, fbc_id) {
> +		mutex_lock(&fbc->lock);
> +		if (fbc->state.plane)
> +			__intel_fbc_disable(fbc);
> +		mutex_unlock(&fbc->lock);
> +	}
>  }
>=20=20
>  static void intel_fbc_underrun_work_fn(struct work_struct *work)
> @@ -1516,19 +1537,9 @@ static void intel_fbc_underrun_work_fn(struct work=
_struct *work)
>  	mutex_unlock(&fbc->lock);
>  }
>=20=20
> -/*
> - * intel_fbc_reset_underrun - reset FBC fifo underrun status.
> - * @i915: the i915 device
> - *
> - * See intel_fbc_handle_fifo_underrun_irq(). For automated testing we
> - * want to re-enable FBC after an underrun to increase test coverage.
> - */
> -void intel_fbc_reset_underrun(struct drm_i915_private *i915)
> +static void __intel_fbc_reset_underrun(struct intel_fbc *fbc)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc;
> -
> -	if (!fbc)
> -		return;
> +	struct drm_i915_private *i915 =3D fbc->i915;
>=20=20
>  	cancel_work_sync(&fbc->underrun_work);
>=20=20
> @@ -1544,6 +1555,38 @@ void intel_fbc_reset_underrun(struct drm_i915_priv=
ate *i915)
>  	mutex_unlock(&fbc->lock);
>  }
>=20=20
> +/*
> + * intel_fbc_reset_underrun - reset FBC fifo underrun status.
> + * @i915: the i915 device
> + *
> + * See intel_fbc_handle_fifo_underrun_irq(). For automated testing we
> + * want to re-enable FBC after an underrun to increase test coverage.
> + */
> +void intel_fbc_reset_underrun(struct drm_i915_private *i915)
> +{
> +	struct intel_fbc *fbc;
> +	enum fbc_id fbc_id;
> +
> +	for_each_intel_fbc(i915, fbc, fbc_id)
> +		__intel_fbc_reset_underrun(fbc);
> +}
> +
> +static void __intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
> +{
> +	/*
> +	 * There's no guarantee that underrun_detected won't be set to true
> +	 * right after this check and before the work is scheduled, but that's
> +	 * not a problem since we'll check it again under the work function
> +	 * while FBC is locked. This check here is just to prevent us from
> +	 * unnecessarily scheduling the work, and it relies on the fact that we
> +	 * never switch underrun_detect back to false after it's true.
> +	 */
> +	if (READ_ONCE(fbc->underrun_detected))
> +		return;
> +
> +	schedule_work(&fbc->underrun_work);
> +}
> +
>  /**
>   * intel_fbc_handle_fifo_underrun_irq - disable FBC when we get a FIFO u=
nderrun
>   * @i915: i915 device
> @@ -1560,21 +1603,11 @@ void intel_fbc_reset_underrun(struct drm_i915_pri=
vate *i915)
>   */
>  void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc;
> +	struct intel_fbc *fbc;
> +	enum fbc_id fbc_id;
>=20=20
> -	if (!fbc)
> -		return;
> -
> -	/* There's no guarantee that underrun_detected won't be set to true
> -	 * right after this check and before the work is scheduled, but that's
> -	 * not a problem since we'll check it again under the work function
> -	 * while FBC is locked. This check here is just to prevent us from
> -	 * unnecessarily scheduling the work, and it relies on the fact that we
> -	 * never switch underrun_detect back to false after it's true. */
> -	if (READ_ONCE(fbc->underrun_detected))
> -		return;
> -
> -	schedule_work(&fbc->underrun_work);
> +	for_each_intel_fbc(i915, fbc, fbc_id)
> +		__intel_fbc_handle_fifo_underrun_irq(fbc);
>  }
>=20=20
>  /*
> @@ -1685,7 +1718,7 @@ void intel_fbc_init(struct drm_i915_private *i915)
>  	if (intel_fbc_hw_is_active(fbc))
>  		intel_fbc_hw_deactivate(fbc);
>=20=20
> -	i915->fbc =3D fbc;
> +	i915->fbc[fbc->id] =3D fbc;
>  }
>=20=20
>  static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unuse=
d)
> @@ -1778,8 +1811,9 @@ static void intel_fbc_debugfs_add(struct intel_fbc =
*fbc)
>=20=20
>  void intel_fbc_debugfs_register(struct drm_i915_private *i915)
>  {
> -	struct intel_fbc *fbc =3D i915->fbc;
> +	struct intel_fbc *fbc;
> +	enum fbc_id fbc_id;
>=20=20
> -	if (fbc)
> +	for_each_intel_fbc(i915, fbc, fbc_id)
>  		intel_fbc_debugfs_add(fbc);
>  }
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index d5359cf3d270..9e31eb54b9f4 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1829,7 +1829,7 @@ static struct intel_fbc *skl_plane_fbc(struct drm_i=
915_private *dev_priv,
>  				       enum pipe pipe, enum plane_id plane_id)
>  {
>  	if (skl_plane_has_fbc(dev_priv, pipe, plane_id))
> -		return dev_priv->fbc;
> +		return dev_priv->fbc[FBC_A];
>  	else
>  		return NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index a0f54a69b11d..7ae62e8e6d02 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -70,6 +70,7 @@
>  #include "display/intel_dmc.h"
>  #include "display/intel_dpll_mgr.h"
>  #include "display/intel_dsb.h"
> +#include "display/intel_fbc.h"
>  #include "display/intel_frontbuffer.h"
>  #include "display/intel_global_state.h"
>  #include "display/intel_gmbus.h"
> @@ -749,7 +750,7 @@ struct drm_i915_private {
>  	u32 pipestat_irq_mask[I915_MAX_PIPES];
>=20=20
>  	struct i915_hotplug hotplug;
> -	struct intel_fbc *fbc;
> +	struct intel_fbc *fbc[I915_MAX_FBCS];
>  	struct i915_drrs drrs;
>  	struct intel_opregion opregion;
>  	struct intel_vbt_data vbt;

--=20
Jani Nikula, Intel Open Source Graphics Center
