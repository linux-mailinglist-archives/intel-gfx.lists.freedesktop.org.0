Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4584117A1C9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 10:00:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1F36EBAD;
	Thu,  5 Mar 2020 09:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F9FD6E15D
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 09:00:18 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id e26so4777036wme.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2020 01:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SU2hVsioiPiekmI9rye143DdP4OvoYVTNfydt6qv4f4=;
 b=GCsZHiL6PiIvgrl1fqpEU33ODB6zx8oTEss80UHjVAhVoutSoZSr3kkf4ehahX8x4C
 hiXi4KCLtHNZ1Xlu4rUZhg+vWoveotPs/yNVAGprfs816q9szGJe96qS3uHQqDyJh2NU
 9ApcQFF43d3kymjyFGoE/ILV844nclU4gtUew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SU2hVsioiPiekmI9rye143DdP4OvoYVTNfydt6qv4f4=;
 b=Ffp/BABBSUAItbuSECuFFgmDhQkY3aqP3bC9Vtox4NqreoeG74qnakYZumHytd01q5
 JcFozjFecjxnIOB0i2ARWnuK4ltBxaKa3Q/xh2pioprta6Sv3yZARqVHLUYGsCYqIYTo
 UklVaVZ32OlJHoeljNijWk9n+gyS8IJQeiWAAEomNmLmbrVnlD/HpoMBDZX2QOj2p7/m
 pJRdmJhumRdX6ssTnMx3lRq3szJe4bWsZYBxXSmWUvTXZbqqmUaO5Dw1au4SUVc7QZ3R
 rtkdIdDwvg23pQudCmcIDbOFisIZW6kmJDm8hu9kjHKQw2BjGHv/lsvLymPPwMziZ+/B
 PZLw==
X-Gm-Message-State: ANhLgQ0Uv09aFz8nzq30VVuRUAIoj0e/Xj5DBC9H1/7YWxymdNhK8L9H
 TMSzZgTqEWZxwfu86bzlG1YIM0ZGYjQ=
X-Google-Smtp-Source: ADFU+vtE9SpTbTDzthNtxKizStPwyPzzmuLQCMjIlW0pu7SUH1YXMHMjWASjvtDFepBrxdQbH4fLYA==
X-Received: by 2002:a7b:c3d1:: with SMTP id t17mr8246767wmj.27.1583398816763; 
 Thu, 05 Mar 2020 01:00:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h17sm44975802wro.52.2020.03.05.01.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 01:00:15 -0800 (PST)
Date: Thu, 5 Mar 2020 10:00:14 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200305090014.GP2363188@phenom.ffwll.local>
References: <20200212144522.23121-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212144522.23121-1-animesh.manna@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: Pre allocate and late
 cleanup of cmd buffer
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 12, 2020 at 08:15:22PM +0530, Animesh Manna wrote:
> Pre-allocate command buffer in atomic_commit using intel_dsb_prepare
> function which also includes pinning and map in cpu domain.
> =

> No change is dsb write/commit functions.
> =

> Now dsb get/put function is refactored and currently used only for
> reference counting. Below dsb api added to do respective job
> mentioned below.
> =

> intel_dsb_prepare - Allocate, pin and map the buffer.
> intel_dsb_cleanup - Unpin and release the gem object.
> =

> RFC: Initial patch for design review.
> v2: included _init() part in _prepare(). [Daniel, Ville]
> v3: dsb_cleanup called after cleanup_planes. [Daniel]
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

I think this should fit a lot better wrt the dma_resv locking rework
that's ongoing.

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Cheers, Daniel

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  36 ++++-
>  drivers/gpu/drm/i915/display/intel_dsb.c     | 132 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dsb.h     |   2 +
>  3 files changed, 116 insertions(+), 54 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 61ba1f2256a0..ae90687e3a6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15076,6 +15076,19 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  =

>  static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
>  {
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		bool mode_changed =3D needs_modeset(crtc_state);
> +
> +		if (mode_changed || crtc_state->update_pipe ||
> +		    crtc_state->uapi.color_mgmt_changed) {
> +			intel_dsb_prepare(crtc);
> +		}
> +	}
> +
>  	return drm_atomic_helper_prepare_planes(state->base.dev,
>  						&state->base);
>  }
> @@ -15643,15 +15656,26 @@ static void intel_atomic_commit_fence_wait(stru=
ct intel_atomic_state *intel_stat
>  		    &wait_reset);
>  }
>  =

> +static void intel_cleanup_dsbs(struct intel_atomic_state *state)
> +{
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
> +		intel_dsb_cleanup(crtc);
> +}
> +
>  static void intel_atomic_cleanup_work(struct work_struct *work)
>  {
> -	struct drm_atomic_state *state =3D
> -		container_of(work, struct drm_atomic_state, commit_work);
> -	struct drm_i915_private *i915 =3D to_i915(state->dev);
> +	struct intel_atomic_state *state =3D
> +		container_of(work, struct intel_atomic_state, base.commit_work);
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  =

> -	drm_atomic_helper_cleanup_planes(&i915->drm, state);
> -	drm_atomic_helper_commit_cleanup_done(state);
> -	drm_atomic_state_put(state);
> +	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
> +	intel_cleanup_dsbs(state);
> +	drm_atomic_helper_commit_cleanup_done(&state->base);
> +	drm_atomic_state_put(&state->base);
>  =

>  	intel_atomic_helper_free_state(i915);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 76ae01277fd6..c31132c41e0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -34,6 +34,86 @@
>  #define DSB_BYTE_EN_SHIFT		20
>  #define DSB_REG_VALUE_MASK		0xfffff
>  =

> +/**
> + * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
> + * @crtc: intel_crtc structure to get pipe info.
> + *
> + * This function prepare the command buffer which is used to store dsb
> + * instructions with data.
> + */
> +
> +void intel_dsb_prepare(struct intel_crtc *crtc)
> +{
> +	struct drm_device *dev =3D crtc->base.dev;
> +	struct drm_i915_private *i915 =3D to_i915(dev);
> +	struct intel_dsb *dsb =3D &crtc->dsb;
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	u32 *buf;
> +	intel_wakeref_t wakeref;
> +
> +	if (!HAS_DSB(i915) || dsb->cmd_buf)
> +		return;
> +
> +	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> +
> +	obj =3D i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
> +	if (IS_ERR(obj)) {
> +		DRM_ERROR("Gem object creation failed\n");
> +		goto out;
> +	}
> +
> +	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> +	if (IS_ERR(vma)) {
> +		DRM_ERROR("Vma creation failed\n");
> +		i915_gem_object_put(obj);
> +		goto out;
> +	}
> +
> +	buf =3D i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
> +	if (IS_ERR(buf)) {
> +		DRM_ERROR("Command buffer creation failed\n");
> +		goto out;
> +	}
> +
> +	dsb->id =3D DSB1;
> +	dsb->vma =3D vma;
> +	dsb->cmd_buf =3D buf;
> +
> +out:
> +	/*
> +	 * On error dsb->cmd_buf will continue to be NULL, making the writes
> +	 * pass-through. Leave the dangling ref to be removed later by the
> +	 * corresponding intel_dsb_put(): the important error message will
> +	 * already be logged above.
> +	 */
> +
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +}
> +
> +/**
> + * intel_dsb_cleanup() - To cleanup DSB context.
> + * @dsb: intel_dsb structure.
> + *
> + * This function cleanup the DSB context by unpinning and releasing
> + * the VMA object associated with it.
> + */
> +
> +void intel_dsb_cleanup(struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_dsb *dsb =3D &crtc->dsb;
> +
> +	if (!HAS_DSB(i915))
> +		return;
> +
> +	if (dsb->vma) {
> +		i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
> +		dsb->vma =3D NULL;
> +		dsb->cmd_buf =3D NULL;
> +	}
> +}
> +
>  static inline bool is_dsb_busy(struct intel_dsb *dsb)
>  {
>  	struct intel_crtc *crtc =3D container_of(dsb, typeof(*crtc), dsb);
> @@ -84,14 +164,13 @@ static inline bool intel_dsb_disable_engine(struct i=
ntel_dsb *dsb)
>  }
>  =

>  /**
> - * intel_dsb_get() - Allocate DSB context and return a DSB instance.
> + * intel_dsb_get() - Return a DSB instance and increase reference count.
>   * @crtc: intel_crtc structure to get pipe info.
>   *
>   * This function provides handle of a DSB instance, for the further DSB
>   * operations.
>   *
>   * Returns: address of Intel_dsb instance requested for.
> - * Failure: Returns the same DSB instance, but without a command buffer.
>   */
>  =

>  struct intel_dsb *
> @@ -100,52 +179,11 @@ intel_dsb_get(struct intel_crtc *crtc)
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *i915 =3D to_i915(dev);
>  	struct intel_dsb *dsb =3D &crtc->dsb;
> -	struct drm_i915_gem_object *obj;
> -	struct i915_vma *vma;
> -	u32 *buf;
> -	intel_wakeref_t wakeref;
>  =

>  	if (!HAS_DSB(i915))
>  		return dsb;
>  =

> -	if (dsb->refcount++ !=3D 0)
> -		return dsb;
> -
> -	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> -
> -	obj =3D i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
> -	if (IS_ERR(obj)) {
> -		DRM_ERROR("Gem object creation failed\n");
> -		goto out;
> -	}
> -
> -	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> -	if (IS_ERR(vma)) {
> -		DRM_ERROR("Vma creation failed\n");
> -		i915_gem_object_put(obj);
> -		goto out;
> -	}
> -
> -	buf =3D i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
> -	if (IS_ERR(buf)) {
> -		DRM_ERROR("Command buffer creation failed\n");
> -		goto out;
> -	}
> -
> -	dsb->id =3D DSB1;
> -	dsb->vma =3D vma;
> -	dsb->cmd_buf =3D buf;
> -
> -out:
> -	/*
> -	 * On error dsb->cmd_buf will continue to be NULL, making the writes
> -	 * pass-through. Leave the dangling ref to be removed later by the
> -	 * corresponding intel_dsb_put(): the important error message will
> -	 * already be logged above.
> -	 */
> -
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> -
> +	dsb->refcount++;
>  	return dsb;
>  }
>  =

> @@ -153,8 +191,8 @@ intel_dsb_get(struct intel_crtc *crtc)
>   * intel_dsb_put() - To destroy DSB context.
>   * @dsb: intel_dsb structure.
>   *
> - * This function destroys the DSB context allocated by a dsb_get(), by
> - * unpinning and releasing the VMA object associated with it.
> + * This function decrease the reference count and reset the command
> + * buffer position.
>   */
>  =

>  void intel_dsb_put(struct intel_dsb *dsb)
> @@ -169,8 +207,6 @@ void intel_dsb_put(struct intel_dsb *dsb)
>  		return;
>  =

>  	if (--dsb->refcount =3D=3D 0) {
> -		i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
> -		dsb->cmd_buf =3D NULL;
>  		dsb->free_pos =3D 0;
>  		dsb->ins_start_offset =3D 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i=
915/display/intel_dsb.h
> index 395ef9ce558e..1dcce198899a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -41,6 +41,8 @@ struct intel_dsb {
>  	u32 ins_start_offset;
>  };
>  =

> +void intel_dsb_prepare(struct intel_crtc *crtc);
> +void intel_dsb_cleanup(struct intel_crtc *crtc);
>  struct intel_dsb *
>  intel_dsb_get(struct intel_crtc *crtc);
>  void intel_dsb_put(struct intel_dsb *dsb);
> -- =

> 2.24.0
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
