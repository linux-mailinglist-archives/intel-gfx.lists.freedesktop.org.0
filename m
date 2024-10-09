Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBDF996820
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 13:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BBE610E6DF;
	Wed,  9 Oct 2024 11:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S+iNs6Yp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3004310E295;
 Wed,  9 Oct 2024 11:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728472368; x=1760008368;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kl0v/8AqLXBaWX96iNkCQWzR66TakjYypxn3GdEqtPM=;
 b=S+iNs6YpjSu80jK3HVMR4XjRju6by12+4XHXxyNklzV3kPJEuBCe+AdP
 2+Aaib+a3NOmJgNYEHkR1BjQcsv+oTz8cQF10tJpG6iASIMHVUDZ0p6bl
 V6t3HwqrnEZz69O2pxYkeOfLcT1aEmVj7pWxfrFw/80Wg4Cjjz9p0e1MB
 lQR598WF2fljODJx81AKzTtSFqKdpkLOOfXX72RKzoZl6iNpLIdnQ8+39
 n9EZW3sfh9a7WTduCB0q8I7pKviaNY2Y//I79QVvOLSgJAreK9rDu3ZD/
 HBWz98+lturbC41TRqZVvaQaTCqiNYJFXHNesBocqcCPdW2OUKNpcxs3B w==;
X-CSE-ConnectionGUID: GPq+bZjCT3aq0R+8fAzHcg==
X-CSE-MsgGUID: 0Wz+uJ7rQBKxC3NKOOPSyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27898660"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27898660"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:12:48 -0700
X-CSE-ConnectionGUID: xmPRBFYZQR2UJwzpTzB7Jw==
X-CSE-MsgGUID: 5PuPIXpfS36sKSWevpqJGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="106979263"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:12:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/gt: s/gen3/gen2/
In-Reply-To: <20241008214349.23331-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
 <20241008214349.23331-3-ville.syrjala@linux.intel.com>
Date: Wed, 09 Oct 2024 14:12:43 +0300
Message-ID: <87iku1a5sk.fsf@intel.com>
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
> Now that we use the gen3 codepaths also for gen2
> rename everything to gen2_ to match.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.c        | 8 ++++----
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.h        | 8 ++++----
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 8 ++++----
>  3 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i=
915/gt/gen2_engine_cs.c
> index 54077cab8e16..4904d0f4162c 100644
> --- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> @@ -169,7 +169,7 @@ static u32 *__gen2_emit_breadcrumb(struct i915_reques=
t *rq, u32 *cs,
>  	return cs;
>  }
>=20=20
> -u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> +u32 *gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs)
>  {
>  	return __gen2_emit_breadcrumb(rq, cs, 16, 8);
>  }
> @@ -248,7 +248,7 @@ int i830_emit_bb_start(struct i915_request *rq,
>  	return 0;
>  }
>=20=20
> -int gen3_emit_bb_start(struct i915_request *rq,
> +int gen2_emit_bb_start(struct i915_request *rq,
>  		       u64 offset, u32 len,
>  		       unsigned int dispatch_flags)
>  {
> @@ -290,14 +290,14 @@ int gen4_emit_bb_start(struct i915_request *rq,
>  	return 0;
>  }
>=20=20
> -void gen3_irq_enable(struct intel_engine_cs *engine)
> +void gen2_irq_enable(struct intel_engine_cs *engine)
>  {
>  	engine->i915->irq_mask &=3D ~engine->irq_enable_mask;
>  	intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->irq_mask);
>  	intel_uncore_posting_read_fw(engine->uncore, GEN2_IMR);
>  }
>=20=20
> -void gen3_irq_disable(struct intel_engine_cs *engine)
> +void gen2_irq_disable(struct intel_engine_cs *engine)
>  {
>  	engine->i915->irq_mask |=3D engine->irq_enable_mask;
>  	intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->irq_mask);
> diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h b/drivers/gpu/drm/i=
915/gt/gen2_engine_cs.h
> index 2f707620b3d4..7b37560fc356 100644
> --- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
> +++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
> @@ -15,21 +15,21 @@ int gen2_emit_flush(struct i915_request *rq, u32 mode=
);
>  int gen4_emit_flush_rcs(struct i915_request *rq, u32 mode);
>  int gen4_emit_flush_vcs(struct i915_request *rq, u32 mode);
>=20=20
> -u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs);
> +u32 *gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs);
>  u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs);
>=20=20
>  int i830_emit_bb_start(struct i915_request *rq,
>  		       u64 offset, u32 len,
>  		       unsigned int dispatch_flags);
> -int gen3_emit_bb_start(struct i915_request *rq,
> +int gen2_emit_bb_start(struct i915_request *rq,
>  		       u64 offset, u32 len,
>  		       unsigned int dispatch_flags);
>  int gen4_emit_bb_start(struct i915_request *rq,
>  		       u64 offset, u32 length,
>  		       unsigned int dispatch_flags);
>=20=20
> -void gen3_irq_enable(struct intel_engine_cs *engine);
> -void gen3_irq_disable(struct intel_engine_cs *engine);
> +void gen2_irq_enable(struct intel_engine_cs *engine);
> +void gen2_irq_disable(struct intel_engine_cs *engine);
>  void gen5_irq_enable(struct intel_engine_cs *engine);
>  void gen5_irq_disable(struct intel_engine_cs *engine);
>=20=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gp=
u/drm/i915/gt/intel_ring_submission.c
> index 694cb79d5452..3ec8bc01058b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1091,8 +1091,8 @@ static void setup_irq(struct intel_engine_cs *engin=
e)
>  		engine->irq_enable =3D gen5_irq_enable;
>  		engine->irq_disable =3D gen5_irq_disable;
>  	} else {
> -		engine->irq_enable =3D gen3_irq_enable;
> -		engine->irq_disable =3D gen3_irq_disable;
> +		engine->irq_enable =3D gen2_irq_enable;
> +		engine->irq_disable =3D gen2_irq_disable;
>  	}
>  }
>=20=20
> @@ -1143,7 +1143,7 @@ static void setup_common(struct intel_engine_cs *en=
gine)
>  	 * equivalent to our next initial bread so we can elide
>  	 * engine->emit_init_breadcrumb().
>  	 */
> -	engine->emit_fini_breadcrumb =3D gen3_emit_breadcrumb;
> +	engine->emit_fini_breadcrumb =3D gen2_emit_breadcrumb;
>  	if (GRAPHICS_VER(i915) =3D=3D 5)
>  		engine->emit_fini_breadcrumb =3D gen5_emit_breadcrumb;
>=20=20
> @@ -1156,7 +1156,7 @@ static void setup_common(struct intel_engine_cs *en=
gine)
>  	else if (IS_I830(i915) || IS_I845G(i915))
>  		engine->emit_bb_start =3D i830_emit_bb_start;
>  	else
> -		engine->emit_bb_start =3D gen3_emit_bb_start;
> +		engine->emit_bb_start =3D gen2_emit_bb_start;
>  }
>=20=20
>  static void setup_rcs(struct intel_engine_cs *engine)

--=20
Jani Nikula, Intel
