Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 280FBA30748
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 10:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B945410E148;
	Tue, 11 Feb 2025 09:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OaQYrMup";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90BD310E148
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 09:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739266722; x=1770802722;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=3WxsuYyzpC/vvXaU8bdbzF/IqNNk4jENVnwkmElYaa4=;
 b=OaQYrMup9xApKZm8kzBtrNwIu5n5gW95fMbFqjad3lnRXVAeAN/kbxSY
 sl54k+hGK0OLf5AqtPBb3ZmE/qg7026VpgdjNDbkTKNg6QAOXMwqqI6ox
 y7KqRbF2UYDVylhRzRUznlIosexHPO78qTq1d3n4tCRStRbA2CPVFeim7
 i0osIvPKgWcpgpxUc+XVhNR7q+yWxrr6I832v1Y7uMQP8BT2Sek+8ZUIJ
 6DYPccEh5S5Rx6fJYpQs+npA2HmfqOnmQlGfgkeO1ERluC3pZv9rh+rUX
 i5kk8haeBtlIfgcn6APrz4EF2JUTe/AqZ4qyw3399nT6LASDccWWPGpEe A==;
X-CSE-ConnectionGUID: k/QOCq2sRii4iycKH9ckGQ==
X-CSE-MsgGUID: xEmuvyuMQIKy1MTbDkN//A==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50512191"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="50512191"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:38:41 -0800
X-CSE-ConnectionGUID: QTr8MjceQKuDol0q+E2vRw==
X-CSE-MsgGUID: i4XmC7g1TjufDX75IuoXyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="112427184"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:38:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/gvt: Stop using
 intel_runtime_pm_put_unchecked()
In-Reply-To: <20250211000135.6096-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
 <20250211000135.6096-4-ville.syrjala@linux.intel.com>
Date: Tue, 11 Feb 2025 11:38:37 +0200
Message-ID: <87h6503joi.fsf@intel.com>
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

On Tue, 11 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_runtime_pm_put_unchecked() is not meant to be used
> outside the runtime pm implementation, so don't.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gvt/aperture_gm.c  |  7 ++++---
>  drivers/gpu/drm/i915/gvt/debugfs.c      |  5 +++--
>  drivers/gpu/drm/i915/gvt/gtt.c          |  6 ++++--
>  drivers/gpu/drm/i915/gvt/gvt.h          |  9 +++++----
>  drivers/gpu/drm/i915/gvt/handlers.c     | 23 +++++++++++++++--------
>  drivers/gpu/drm/i915/gvt/sched_policy.c |  5 +++--
>  6 files changed, 34 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i91=
5/gvt/aperture_gm.c
> index eedd1865bb98..62d14f82256f 100644
> --- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
> +++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
> @@ -46,6 +46,7 @@ static int alloc_gm(struct intel_vgpu *vgpu, bool high_=
gm)
>  	unsigned int flags;
>  	u64 start, end, size;
>  	struct drm_mm_node *node;
> +	intel_wakeref_t wakeref;
>  	int ret;
>=20=20
>  	if (high_gm) {
> @@ -63,12 +64,12 @@ static int alloc_gm(struct intel_vgpu *vgpu, bool hig=
h_gm)
>  	}
>=20=20
>  	mutex_lock(&gt->ggtt->vm.mutex);
> -	mmio_hw_access_pre(gt);
> +	wakeref =3D mmio_hw_access_pre(gt);
>  	ret =3D i915_gem_gtt_insert(&gt->ggtt->vm, NULL, node,
>  				  size, I915_GTT_PAGE_SIZE,
>  				  I915_COLOR_UNEVICTABLE,
>  				  start, end, flags);
> -	mmio_hw_access_post(gt);
> +	mmio_hw_access_post(gt, wakeref);
>  	mutex_unlock(&gt->ggtt->vm.mutex);
>  	if (ret)
>  		gvt_err("fail to alloc %s gm space from host\n",
> @@ -226,7 +227,7 @@ static int alloc_vgpu_fence(struct intel_vgpu *vgpu)
>  		vgpu->fence.regs[i] =3D NULL;
>  	}
>  	mutex_unlock(&gvt->gt->ggtt->vm.mutex);
> -	intel_runtime_pm_put_unchecked(uncore->rpm);
> +	intel_runtime_pm_put(uncore->rpm, wakeref);
>  	return -ENOSPC;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gv=
t/debugfs.c
> index baccbf1761b7..673534f061ef 100644
> --- a/drivers/gpu/drm/i915/gvt/debugfs.c
> +++ b/drivers/gpu/drm/i915/gvt/debugfs.c
> @@ -91,16 +91,17 @@ static int vgpu_mmio_diff_show(struct seq_file *s, vo=
id *unused)
>  		.diff =3D 0,
>  	};
>  	struct diff_mmio *node, *next;
> +	intel_wakeref_t wakeref;
>=20=20
>  	INIT_LIST_HEAD(&param.diff_mmio_list);
>=20=20
>  	mutex_lock(&gvt->lock);
>  	spin_lock_bh(&gvt->scheduler.mmio_context_lock);
>=20=20
> -	mmio_hw_access_pre(gvt->gt);
> +	wakeref =3D mmio_hw_access_pre(gvt->gt);
>  	/* Recognize all the diff mmios to list. */
>  	intel_gvt_for_each_tracked_mmio(gvt, mmio_diff_handler, &param);
> -	mmio_hw_access_post(gvt->gt);
> +	mmio_hw_access_post(gvt->gt, wakeref);
>=20=20
>  	spin_unlock_bh(&gvt->scheduler.mmio_context_lock);
>  	mutex_unlock(&gvt->lock);
> diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gt=
t.c
> index 2fa7ca19ba5d..ae9b0ded3651 100644
> --- a/drivers/gpu/drm/i915/gvt/gtt.c
> +++ b/drivers/gpu/drm/i915/gvt/gtt.c
> @@ -220,9 +220,11 @@ static u64 read_pte64(struct i915_ggtt *ggtt, unsign=
ed long index)
>=20=20
>  static void ggtt_invalidate(struct intel_gt *gt)
>  {
> -	mmio_hw_access_pre(gt);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D mmio_hw_access_pre(gt);
>  	intel_uncore_write(gt->uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
> -	mmio_hw_access_post(gt);
> +	mmio_hw_access_post(gt, wakeref);
>  }
>=20=20
>  static void write_pte64(struct i915_ggtt *ggtt, unsigned long index, u64=
 pte)
> diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gv=
t.h
> index 01d890999f25..1d10c16e6465 100644
> --- a/drivers/gpu/drm/i915/gvt/gvt.h
> +++ b/drivers/gpu/drm/i915/gvt/gvt.h
> @@ -570,14 +570,15 @@ enum {
>  	GVT_FAILSAFE_GUEST_ERR,
>  };
>=20=20
> -static inline void mmio_hw_access_pre(struct intel_gt *gt)
> +static inline intel_wakeref_t mmio_hw_access_pre(struct intel_gt *gt)
>  {
> -	intel_runtime_pm_get(gt->uncore->rpm);
> +	return intel_runtime_pm_get(gt->uncore->rpm);
>  }
>=20=20
> -static inline void mmio_hw_access_post(struct intel_gt *gt)
> +static inline void mmio_hw_access_post(struct intel_gt *gt,
> +				       intel_wakeref_t wakeref)
>  {
> -	intel_runtime_pm_put_unchecked(gt->uncore->rpm);
> +	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index 4efee6797873..02f45929592e 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -264,6 +264,7 @@ static int fence_mmio_write(struct intel_vgpu *vgpu, =
unsigned int off,
>  {
>  	struct intel_gvt *gvt =3D vgpu->gvt;
>  	unsigned int fence_num =3D offset_to_fence_num(off);
> +	intel_wakeref_t wakeref;
>  	int ret;
>=20=20
>  	ret =3D sanitize_fence_mmio_access(vgpu, fence_num, p_data, bytes);
> @@ -271,10 +272,10 @@ static int fence_mmio_write(struct intel_vgpu *vgpu=
, unsigned int off,
>  		return ret;
>  	write_vreg(vgpu, off, p_data, bytes);
>=20=20
> -	mmio_hw_access_pre(gvt->gt);
> +	wakeref =3D mmio_hw_access_pre(gvt->gt);
>  	intel_vgpu_write_fence(vgpu, fence_num,
>  			vgpu_vreg64(vgpu, fence_num_to_offset(fence_num)));
> -	mmio_hw_access_post(gvt->gt);
> +	mmio_hw_access_post(gvt->gt, wakeref);
>  	return 0;
>  }
>=20=20
> @@ -1975,10 +1976,12 @@ static int mmio_read_from_hw(struct intel_vgpu *v=
gpu,
>  	    vgpu =3D=3D gvt->scheduler.engine_owner[engine->id] ||
>  	    offset =3D=3D i915_mmio_reg_offset(RING_TIMESTAMP(engine->mmio_base=
)) ||
>  	    offset =3D=3D i915_mmio_reg_offset(RING_TIMESTAMP_UDW(engine->mmio_=
base))) {
> -		mmio_hw_access_pre(gvt->gt);
> +		intel_wakeref_t wakeref;
> +
> +		wakeref =3D mmio_hw_access_pre(gvt->gt);
>  		vgpu_vreg(vgpu, offset) =3D
>  			intel_uncore_read(gvt->gt->uncore, _MMIO(offset));
> -		mmio_hw_access_post(gvt->gt);
> +		mmio_hw_access_post(gvt->gt, wakeref);
>  	}
>=20=20
>  	return intel_vgpu_default_mmio_read(vgpu, offset, p_data, bytes);
> @@ -3209,10 +3212,12 @@ void intel_gvt_restore_fence(struct intel_gvt *gv=
t)
>  	int i, id;
>=20=20
>  	idr_for_each_entry(&(gvt)->vgpu_idr, vgpu, id) {
> -		mmio_hw_access_pre(gvt->gt);
> +		intel_wakeref_t wakeref;
> +
> +		wakeref =3D mmio_hw_access_pre(gvt->gt);
>  		for (i =3D 0; i < vgpu_fence_sz(vgpu); i++)
>  			intel_vgpu_write_fence(vgpu, i, vgpu_vreg64(vgpu, fence_num_to_offset=
(i)));
> -		mmio_hw_access_post(gvt->gt);
> +		mmio_hw_access_post(gvt->gt, wakeref);
>  	}
>  }
>=20=20
> @@ -3233,8 +3238,10 @@ void intel_gvt_restore_mmio(struct intel_gvt *gvt)
>  	int id;
>=20=20
>  	idr_for_each_entry(&(gvt)->vgpu_idr, vgpu, id) {
> -		mmio_hw_access_pre(gvt->gt);
> +		intel_wakeref_t wakeref;
> +
> +		wakeref =3D mmio_hw_access_pre(gvt->gt);
>  		intel_gvt_for_each_tracked_mmio(gvt, mmio_pm_restore_handler, vgpu);
> -		mmio_hw_access_post(gvt->gt);
> +		mmio_hw_access_post(gvt->gt, wakeref);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/gvt/sched_policy.c b/drivers/gpu/drm/i9=
15/gvt/sched_policy.c
> index c077fb4674f0..c75b393ab0b7 100644
> --- a/drivers/gpu/drm/i915/gvt/sched_policy.c
> +++ b/drivers/gpu/drm/i915/gvt/sched_policy.c
> @@ -448,6 +448,7 @@ void intel_vgpu_stop_schedule(struct intel_vgpu *vgpu)
>  	struct drm_i915_private *dev_priv =3D vgpu->gvt->gt->i915;
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
> +	intel_wakeref_t wakeref;
>=20=20
>  	if (!vgpu_data->active)
>  		return;
> @@ -466,7 +467,7 @@ void intel_vgpu_stop_schedule(struct intel_vgpu *vgpu)
>  		scheduler->current_vgpu =3D NULL;
>  	}
>=20=20
> -	intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
>  	spin_lock_bh(&scheduler->mmio_context_lock);
>  	for_each_engine(engine, vgpu->gvt->gt, id) {
>  		if (scheduler->engine_owner[engine->id] =3D=3D vgpu) {
> @@ -475,6 +476,6 @@ void intel_vgpu_stop_schedule(struct intel_vgpu *vgpu)
>  		}
>  	}
>  	spin_unlock_bh(&scheduler->mmio_context_lock);
> -	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>  	mutex_unlock(&vgpu->gvt->sched_lock);
>  }

--=20
Jani Nikula, Intel
