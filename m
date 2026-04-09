Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOWLLblg12keNQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:18:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1863F3C7A2A
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5889510E76F;
	Thu,  9 Apr 2026 08:17:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BVuYzmSY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD96710E768;
 Thu,  9 Apr 2026 08:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775722678; x=1807258678;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uvnzCPAQaegStDHL3qh9Anic3TFOTdvOGtXXNVqWRP8=;
 b=BVuYzmSYoTdui2Ee7Gc922CNBTfDWA35fx/emxveVcLCSmonJUYu3ePL
 PH8110W53HgUaQzeSWwXrZPPrxd/tsV4hq5gk4CnizFYCXItCAIZK1SQW
 1Ml8bTAwi35jqAz+iGsbqMf9iJ00Mxx0tvkPYoBPVDrD48ZM7Sbi+spfK
 xomb43GD+xHysvVnSvTjjd4PzkenuXM0AtLwAFb8cyuxNs7TNJbfFeiGH
 DabuEyms8HYHszqxENuXHXrJd3Vl4gfeNTPTohVmctdmlcpCskdhKsb/t
 s3XNRSchUmnRc+nfJdyLDg8vMZTykGAveKgGuRIkD9UbFp5dxjBGsxZZK g==;
X-CSE-ConnectionGUID: Gd/bSi5XQae0Vqbw842yaA==
X-CSE-MsgGUID: uX+XFCPXT+S9lxkD0+kGIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76610264"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76610264"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:17:58 -0700
X-CSE-ConnectionGUID: hf/UWDY0TnyTAtlP4DKt8A==
X-CSE-MsgGUID: nRkhJqGkTwmz2bkAEc8mJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228638269"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.62])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:17:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Simona
 Vetter <simona.vetter@ffwll.ch>, Christian =?utf-8?Q?K=C3=B6nig?=
 <christian.koenig@amd.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 3/6] drm/i915/reset: Move pending_fb_pin handling to i915
In-Reply-To: <20260408233458.22666-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-4-ville.syrjala@linux.intel.com>
Date: Thu, 09 Apr 2026 11:17:51 +0300
Message-ID: <90a7ec16fbc16368fd2b64db4cc30ce5d3e36439@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 1863F3C7A2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 09 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Only i915 uses the pending_fb_pin counter to potentially whack
> the GPU harder if the display gets nuked during a GPU reset.
> Move the atomic counter into the i915 specific bits of code, so
> that we don't need to worry about on the display side.
>
> For some reason the overlay code kept the pending_fb_pin counter
> elevated for longer than just for the pin, but from now on it'll
> just cover the actual pinning part.
>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Yay, this is nice!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  1 -
>  .../drm/i915/display/intel_display_reset.c    |  9 +--------
>  .../drm/i915/display/intel_display_reset.h    |  5 +----
>  drivers/gpu/drm/i915/display/intel_overlay.c  | 10 ++--------
>  drivers/gpu/drm/i915/gt/intel_reset.c         | 19 ++++++++++---------
>  drivers/gpu/drm/i915/i915_dpt.c               |  5 ++---
>  drivers/gpu/drm/i915/i915_drv.h               |  2 ++
>  drivers/gpu/drm/i915/i915_fb_pin.c            |  9 ++++-----
>  drivers/gpu/drm/i915/i915_overlay.c           |  6 ++++++
>  9 files changed, 28 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index d708d322aa85..9e77003addd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -561,7 +561,6 @@ struct intel_display {
>  		struct drm_atomic_state *modeset_state;
>  		struct drm_modeset_acquire_ctx reset_ctx;
>  		/* modeset stuck tracking for reset */
> -		atomic_t pending_fb_pin;
>  		u32 saveDSPARB;
>  		u32 saveSWF0[16];
>  		u32 saveSWF1[16];
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers=
/gpu/drm/i915/display/intel_display_reset.c
> index 137a2a33c8b0..ca15dc18ef0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -27,19 +27,12 @@ bool intel_display_reset_test(struct intel_display *d=
isplay)
>  		display->params.force_reset_modeset_test;
>  }
>=20=20
> -void intel_display_reset_prepare(struct intel_display *display,
> -				 modeset_stuck_fn modeset_stuck, void *context)
> +void intel_display_reset_prepare(struct intel_display *display)
>  {
>  	struct drm_modeset_acquire_ctx *ctx =3D &display->restore.reset_ctx;
>  	struct drm_atomic_state *state;
>  	int ret;
>=20=20
> -	if (atomic_read(&display->restore.pending_fb_pin)) {
> -		drm_dbg_kms(display->drm,
> -			    "Modeset potentially stuck, unbreaking through wedging\n");
> -		modeset_stuck(context);
> -	}
> -
>  	/*
>  	 * Need mode_config.mutex so that we don't
>  	 * trample ongoing ->detect() and whatnot.
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers=
/gpu/drm/i915/display/intel_display_reset.h
> index e0f15e757728..a8aa7729d33f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -10,12 +10,9 @@
>=20=20
>  struct intel_display;
>=20=20
> -typedef void modeset_stuck_fn(void *context);
> -
>  bool intel_display_reset_supported(struct intel_display *display);
>  bool intel_display_reset_test(struct intel_display *display);
> -void intel_display_reset_prepare(struct intel_display *display,
> -				 modeset_stuck_fn modeset_stuck, void *context);
> +void intel_display_reset_prepare(struct intel_display *display);
>  void intel_display_reset_finish(struct intel_display *display, bool test=
_only);
>=20=20
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/d=
rm/i915/display/intel_overlay.c
> index 12a325ceae6f..a809aa2950ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -481,13 +481,9 @@ static int intel_overlay_do_put_image(struct intel_o=
verlay *overlay,
>  	if (ret !=3D 0)
>  		return ret;
>=20=20
> -	atomic_inc(&display->restore.pending_fb_pin);
> -
>  	vma =3D intel_parent_overlay_pin_fb(display, obj, &offset);
> -	if (IS_ERR(vma)) {
> -		ret =3D PTR_ERR(vma);
> -		goto out_pin_section;
> -	}
> +	if (IS_ERR(vma))
> +		return PTR_ERR(vma);
>=20=20
>  	if (!intel_parent_overlay_is_active(display)) {
>  		const struct intel_crtc_state *crtc_state =3D
> @@ -571,8 +567,6 @@ static int intel_overlay_do_put_image(struct intel_ov=
erlay *overlay,
>=20=20
>  out_unpin:
>  	intel_parent_overlay_unpin_fb(display, vma);
> -out_pin_section:
> -	atomic_dec(&display->restore.pending_fb_pin);
>=20=20
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index ffd11767874f..a1e6aaca8c9b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1398,11 +1398,6 @@ int intel_engine_reset(struct intel_engine_cs *eng=
ine, const char *msg)
>  	return err;
>  }
>=20=20
> -static void display_reset_modeset_stuck(void *gt)
> -{
> -	intel_gt_set_wedged(gt);
> -}
> -
>  static void intel_gt_reset_global(struct intel_gt *gt,
>  				  u32 engine_mask,
>  				  const char *reason)
> @@ -1434,10 +1429,16 @@ static void intel_gt_reset_global(struct intel_gt=
 *gt,
>  			intel_display_reset_test(display) ||
>  			need_display_reset;
>=20=20
> -		if (reset_display)
> -			intel_display_reset_prepare(display,
> -						    display_reset_modeset_stuck,
> -						    gt);
> +		if (reset_display) {
> +			if (atomic_read(&i915->pending_fb_pin)) {
> +				drm_dbg_kms(&i915->drm,
> +					    "Modeset potentially stuck, unbreaking through wedging\n");
> +
> +				intel_gt_set_wedged(gt);
> +			}
> +
> +			intel_display_reset_prepare(display);
> +		}
>=20=20
>  		intel_gt_reset(gt, engine_mask, reason);
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_=
dpt.c
> index 9f47bb563c85..fcd7cced771d 100644
> --- a/drivers/gpu/drm/i915/i915_dpt.c
> +++ b/drivers/gpu/drm/i915/i915_dpt.c
> @@ -129,7 +129,6 @@ static void dpt_cleanup(struct i915_address_space *vm)
>  struct i915_vma *i915_dpt_pin_to_ggtt(struct intel_dpt *dpt, unsigned in=
t alignment)
>  {
>  	struct drm_i915_private *i915 =3D dpt->vm.i915;
> -	struct intel_display *display =3D i915->display;
>  	struct ref_tracker *wakeref;
>  	struct i915_vma *vma;
>  	void __iomem *iomem;
> @@ -141,7 +140,7 @@ struct i915_vma *i915_dpt_pin_to_ggtt(struct intel_dp=
t *dpt, unsigned int alignm
>  		pin_flags |=3D PIN_MAPPABLE;
>=20=20
>  	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> -	atomic_inc(&display->restore.pending_fb_pin);
> +	atomic_inc(&i915->pending_fb_pin);
>=20=20
>  	for_i915_gem_ww(&ww, err, true) {
>  		err =3D i915_gem_object_lock(dpt->obj, &ww);
> @@ -171,7 +170,7 @@ struct i915_vma *i915_dpt_pin_to_ggtt(struct intel_dp=
t *dpt, unsigned int alignm
>=20=20
>  	dpt->obj->mm.dirty =3D true;
>=20=20
> -	atomic_dec(&display->restore.pending_fb_pin);
> +	atomic_dec(&i915->pending_fb_pin);
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>=20=20
>  	return err ? ERR_PTR(err) : vma;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index dafee3dcd1c5..844ed79e7211 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -315,6 +315,8 @@ struct drm_i915_private {
>  	/* The TTM device structure. */
>  	struct ttm_device bdev;
>=20=20
> +	atomic_t pending_fb_pin;
> +
>  	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index 1018f4b7bc2c..a08a8ace681f 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -29,7 +29,6 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  		    unsigned long *out_flags,
>  		    struct intel_dpt *dpt)
>  {
> -	struct intel_display *display =3D to_intel_display(fb->dev);
>  	struct drm_i915_private *i915 =3D to_i915(fb->dev);
>  	struct drm_gem_object *_obj =3D intel_fb_bo(fb);
>  	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
> @@ -48,7 +47,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
>  		return ERR_PTR(-EINVAL);
>=20=20
> -	atomic_inc(&display->restore.pending_fb_pin);
> +	atomic_inc(&i915->pending_fb_pin);
>=20=20
>  	for_i915_gem_ww(&ww, ret, true) {
>  		ret =3D i915_gem_object_lock(obj, &ww);
> @@ -103,7 +102,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>=20=20
>  	i915_vma_get(vma);
>  err:
> -	atomic_dec(&display->restore.pending_fb_pin);
> +	atomic_dec(&i915->pending_fb_pin);
>=20=20
>  	return vma;
>  }
> @@ -142,7 +141,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	 */
>  	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
>=20=20
> -	atomic_inc(&display->restore.pending_fb_pin);
> +	atomic_inc(&i915->pending_fb_pin);
>=20=20
>  	/*
>  	 * Valleyview is definitely limited to scanning out the first
> @@ -218,7 +217,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	if (ret)
>  		vma =3D ERR_PTR(ret);
>=20=20
> -	atomic_dec(&display->restore.pending_fb_pin);
> +	atomic_dec(&i915->pending_fb_pin);
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  	return vma;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_overlay.c b/drivers/gpu/drm/i915/i=
915_overlay.c
> index 2d7aff51e39b..6de550a17756 100644
> --- a/drivers/gpu/drm/i915/i915_overlay.c
> +++ b/drivers/gpu/drm/i915/i915_overlay.c
> @@ -354,11 +354,14 @@ static struct i915_vma *i915_overlay_pin_fb(struct =
drm_device *drm,
>  					    struct drm_gem_object *obj,
>  					    u32 *offset)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(drm);
>  	struct drm_i915_gem_object *new_bo =3D to_intel_bo(obj);
>  	struct i915_gem_ww_ctx ww;
>  	struct i915_vma *vma;
>  	int ret;
>=20=20
> +	atomic_inc(&i915->pending_fb_pin);
> +
>  	i915_gem_ww_ctx_init(&ww, true);
>  retry:
>  	ret =3D i915_gem_object_lock(new_bo, &ww);
> @@ -373,6 +376,9 @@ static struct i915_vma *i915_overlay_pin_fb(struct dr=
m_device *drm,
>  			goto retry;
>  	}
>  	i915_gem_ww_ctx_fini(&ww);
> +
> +	atomic_dec(&i915->pending_fb_pin);
> +
>  	if (ret)
>  		return ERR_PTR(ret);

--=20
Jani Nikula, Intel
