Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D91A199681D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 13:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D08710E6DC;
	Wed,  9 Oct 2024 11:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S981kmfD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E619B10E6DC;
 Wed,  9 Oct 2024 11:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728472353; x=1760008353;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=D2SpwtzA7O34hWtvNVOw2nC6fjuzaCILXXXXOu7I7jk=;
 b=S981kmfDtYsY9+/DttoqqvZRqSqP4aMuc29TLLthZDW+xqb2MIyoW/A9
 2g7FGtDxSUo8XktqgH8GSYdQx/ff1qgo/6znQr1gOi2vrXQKbn1IyvVQ5
 m0Zc6B/j5s9Uk/s2Veb29I+BhHqbGOXs0jQTQ+4BobyxmdKdE+HfP26Kr
 0U22t1nU7kLeR8shyeD36Llh5s/5NZSaXNUJlrAjmxAyvdd2pIsVcT94O
 TRqJgoq39Fxa8HSF3a9yyBsddxlmNug2dtkwjx2j97RL/A13lbtfRxtCi
 1Sr/Z+bSA10te5yRIgRj5jURkXYmeHF1kDHa9tT+ywgpT5RmCUvYDJM/s w==;
X-CSE-ConnectionGUID: 79/lN1RBRyC/ryZAjKvEHw==
X-CSE-MsgGUID: Q1Y9/oIISsCq6Vk+go4Tlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39156221"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="39156221"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:12:33 -0700
X-CSE-ConnectionGUID: M2khME1bSo2shG/4LdlXSQ==
X-CSE-MsgGUID: A4xYfzHoRA+IrT9BhpRHSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="107036636"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:12:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/gt: Nuke gen2_irq_{enable,disable}()
In-Reply-To: <20241008214349.23331-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
 <20241008214349.23331-2-ville.syrjala@linux.intel.com>
Date: Wed, 09 Oct 2024 14:12:28 +0300
Message-ID: <87ldyxa5sz.fsf@intel.com>
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
> We've determined that accessing the (supposedly) 16bit
> interrupt registers on gen2 as 32bit works just fine.
> We already dropped the special case from the main interrupt
> code, do so also for the gt interrupt stuff.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.c        | 17 -----------------
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.h        |  2 --
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c |  5 +----
>  3 files changed, 1 insertion(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i=
915/gt/gen2_engine_cs.c
> index 8fe0499308ff..54077cab8e16 100644
> --- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> @@ -290,23 +290,6 @@ int gen4_emit_bb_start(struct i915_request *rq,
>  	return 0;
>  }
>=20=20
> -void gen2_irq_enable(struct intel_engine_cs *engine)
> -{
> -	struct drm_i915_private *i915 =3D engine->i915;
> -
> -	i915->irq_mask &=3D ~engine->irq_enable_mask;
> -	intel_uncore_write16(&i915->uncore, GEN2_IMR, i915->irq_mask);
> -	ENGINE_POSTING_READ16(engine, RING_IMR);
> -}
> -
> -void gen2_irq_disable(struct intel_engine_cs *engine)
> -{
> -	struct drm_i915_private *i915 =3D engine->i915;
> -
> -	i915->irq_mask |=3D engine->irq_enable_mask;
> -	intel_uncore_write16(&i915->uncore, GEN2_IMR, i915->irq_mask);
> -}
> -
>  void gen3_irq_enable(struct intel_engine_cs *engine)
>  {
>  	engine->i915->irq_mask &=3D ~engine->irq_enable_mask;
> diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h b/drivers/gpu/drm/i=
915/gt/gen2_engine_cs.h
> index a5cd64a65c9e..2f707620b3d4 100644
> --- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
> +++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
> @@ -28,8 +28,6 @@ int gen4_emit_bb_start(struct i915_request *rq,
>  		       u64 offset, u32 length,
>  		       unsigned int dispatch_flags);
>=20=20
> -void gen2_irq_enable(struct intel_engine_cs *engine);
> -void gen2_irq_disable(struct intel_engine_cs *engine);
>  void gen3_irq_enable(struct intel_engine_cs *engine);
>  void gen3_irq_disable(struct intel_engine_cs *engine);
>  void gen5_irq_enable(struct intel_engine_cs *engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gp=
u/drm/i915/gt/intel_ring_submission.c
> index 72277bc8322e..694cb79d5452 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1090,12 +1090,9 @@ static void setup_irq(struct intel_engine_cs *engi=
ne)
>  	} else if (GRAPHICS_VER(i915) >=3D 5) {
>  		engine->irq_enable =3D gen5_irq_enable;
>  		engine->irq_disable =3D gen5_irq_disable;
> -	} else if (GRAPHICS_VER(i915) >=3D 3) {
> +	} else {
>  		engine->irq_enable =3D gen3_irq_enable;
>  		engine->irq_disable =3D gen3_irq_disable;
> -	} else {
> -		engine->irq_enable =3D gen2_irq_enable;
> -		engine->irq_disable =3D gen2_irq_disable;
>  	}
>  }

--=20
Jani Nikula, Intel
