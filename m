Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA9F996844
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 13:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAFE110E6E4;
	Wed,  9 Oct 2024 11:17:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nhZSKTNs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0AFC10E6E1;
 Wed,  9 Oct 2024 11:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728472632; x=1760008632;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HvdMwIQXrItVN5T5I6sBAYt/1kK8gKX51RnruTmI3vc=;
 b=nhZSKTNsmVVDwBvo1S5MaFfwiwuXMj65Tpg7Ov5FMJ7mMXtPWhDAEytx
 pzbcCrmmw2VNgtPXhfJ48WyqMmJw15+QHaPYu5zWxntV3BN7+bOM0TmvM
 /Vlj+1bcBnswXnC2u2muhxwpZThO3PkAhbzz8oJ6lgt6/mHjtvb+yl1Ck
 JyaPO3m4BJel2QBkF3YIqPjkO8Lnswdctg1Z7yVY20T10quNj8ae4UuT4
 syQ0AhGJzBSFo4ul5VCi++QIp/l/HSPAdXshXzQaJpRHkxtzAEQ+6O4Mk
 IiFTSkTShZ5vD+M88/s9BGPKBlg6s1WXPDjRo6Zr2I47TffK2bzqJIac1 Q==;
X-CSE-ConnectionGUID: ZDeitKKYSjm7NBx4kHxthA==
X-CSE-MsgGUID: 1bNpd+p1RY2uqDyDfi7yAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27213413"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27213413"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:17:11 -0700
X-CSE-ConnectionGUID: KSbY7MgTTJiskkO2IxrjJw==
X-CSE-MsgGUID: Se3csPNgTkOvmLwMH90t6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="81232562"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:17:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915/pmu: Add support for gen2
In-Reply-To: <20241008214349.23331-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
 <20241008214349.23331-5-ville.syrjala@linux.intel.com>
Date: Wed, 09 Oct 2024 14:17:06 +0300
Message-ID: <87frp5a5l9.fsf@intel.com>
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

On Wed, 09 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Implement pmu support for gen2 so that one can use intel_gpu_top
> on it once again.
>
> Gen2 lacks MI_MODE/MODE_IDLE so we'll have to do a bit more work
> to determine the state of the engine:
> - to determine if the ring contains unconsumed data we can simply
>   compare RING_TAIL vs. RING_HEAD
> - also check RING_HEAD vs. ACTHD to catch cases where the hardware
>   is still executing a batch buffer but the ring head has already
>   caught up with the tail. Not entirely sure if that's actually
>   possible or not, but maybe it can happen if the batch buffer is
>   initiated from the very end of the ring? But even if not strictly
>   necessary there's no real harm in checking anyway.
> - MI_WAIT_FOR_EVENT can be detected via a dedicated bit in RING_HEAD
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |  2 +-
>  drivers/gpu/drm/i915/i915_pmu.c             | 32 +++++++++++++++++----
>  2 files changed, 27 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/dr=
m/i915/gt/intel_engine_regs.h
> index a8eac59e3779..1c4784cb296c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -15,6 +15,7 @@
>  #define   HEAD_WRAP_COUNT			0xFFE00000
>  #define   HEAD_WRAP_ONE				0x00200000
>  #define   HEAD_ADDR				0x001FFFFC
> +#define   HEAD_WAIT_I8XX			(1 << 0) /* gen2, PRBx_HEAD */
>  #define RING_START(base)			_MMIO((base) + 0x38)
>  #define RING_CTL(base)				_MMIO((base) + 0x3c)
>  #define   RING_CTL_SIZE(size)			((size) - PAGE_SIZE) /* in bytes -> page=
s */
> @@ -26,7 +27,6 @@
>  #define   RING_VALID_MASK			0x00000001
>  #define   RING_VALID				0x00000001
>  #define   RING_INVALID				0x00000000
> -#define   RING_WAIT_I8XX			(1 << 0) /* gen2, PRBx_HEAD */
>  #define   RING_WAIT				(1 << 11) /* gen3+, PRBx_CTL */
>  #define   RING_WAIT_SEMAPHORE			(1 << 10) /* gen6+ */
>  #define RING_SYNC_0(base)			_MMIO((base) + 0x40)
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_=
pmu.c
> index 67b6cbdeff1d..2eed4c866321 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -356,7 +356,7 @@ static bool exclusive_mmio_access(const struct drm_i9=
15_private *i915)
>  	return GRAPHICS_VER(i915) =3D=3D 7;
>  }
>=20=20
> -static void engine_sample(struct intel_engine_cs *engine, unsigned int p=
eriod_ns)
> +static void engine_sample_gen3(struct intel_engine_cs *engine, unsigned =
int period_ns)

A bit surprising to see a gen3 suffix rather than a prefix.

Anyway, not going to spend time on looking into gen2 details, but it's
fine,

Acked-by: Jani Nikula <jani.nikula@intel.com>


>  {
>  	struct intel_engine_pmu *pmu =3D &engine->pmu;
>  	bool busy;
> @@ -391,6 +391,31 @@ static void engine_sample(struct intel_engine_cs *en=
gine, unsigned int period_ns
>  		add_sample(&pmu->sample[I915_SAMPLE_BUSY], period_ns);
>  }
>=20=20
> +static void engine_sample_gen2(struct intel_engine_cs *engine, unsigned =
int period_ns)
> +{
> +	struct intel_engine_pmu *pmu =3D &engine->pmu;
> +	u32 tail, head, acthd;
> +
> +	tail =3D ENGINE_READ_FW(engine, RING_TAIL);
> +	head =3D ENGINE_READ_FW(engine, RING_HEAD);
> +	acthd =3D ENGINE_READ_FW(engine, ACTHD);
> +
> +	if (head & HEAD_WAIT_I8XX)
> +		add_sample(&pmu->sample[I915_SAMPLE_WAIT], period_ns);
> +
> +	if (head & HEAD_WAIT_I8XX || head !=3D acthd ||
> +	    (head & HEAD_ADDR) !=3D (tail & TAIL_ADDR))
> +		add_sample(&pmu->sample[I915_SAMPLE_BUSY], period_ns);
> +}
> +
> +static void engine_sample(struct intel_engine_cs *engine, unsigned int p=
eriod_ns)
> +{
> +	if (GRAPHICS_VER(engine->i915) >=3D 3)
> +		engine_sample_gen3(engine, period_ns);
> +	else
> +		engine_sample_gen2(engine, period_ns);
> +}
> +
>  static void
>  engines_sample(struct intel_gt *gt, unsigned int period_ns)
>  {
> @@ -1243,11 +1268,6 @@ void i915_pmu_register(struct drm_i915_private *i9=
15)
>=20=20
>  	int ret =3D -ENOMEM;
>=20=20
> -	if (GRAPHICS_VER(i915) <=3D 2) {
> -		drm_info(&i915->drm, "PMU not supported for this GPU.");
> -		return;
> -	}
> -
>  	spin_lock_init(&pmu->lock);
>  	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>  	pmu->timer.function =3D i915_sample;

--=20
Jani Nikula, Intel
