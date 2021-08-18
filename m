Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8593F0DC9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 23:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9766E8D8;
	Wed, 18 Aug 2021 21:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AF5D890A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 21:56:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="203635120"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="203635120"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 14:56:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="641484737"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 18 Aug 2021 14:56:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 14:56:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 14:56:34 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Wed, 18 Aug 2021 14:56:34 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Harrison, John C"
 <john.c.harrison@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 8/9] drm/i915/dg2: Maintain
 backward-compatible nested batch behavior
Thread-Index: AQHXihgkV+CAu7JHSkmqel2bRRpXYqt5433A
Date: Wed, 18 Aug 2021 21:56:34 +0000
Message-ID: <3ba20812b10d4b4981794cafc663fb95@intel.com>
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
 <20210805163647.801064-9-matthew.d.roper@intel.com>
In-Reply-To: <20210805163647.801064-9-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 8/9] drm/i915/dg2: Maintain
 backward-compatible nested batch behavior
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
tt
> Roper
> Sent: Thursday, August 5, 2021 9:37 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Harrison, John C
> <john.c.harrison@intel.com>
> Subject: [Intel-gfx] [PATCH v5 8/9] drm/i915/dg2: Maintain backward-
> compatible nested batch behavior
>=20
> For tgl+, the per-context setting of MI_MODE[12] determines whether the
> bits of a nested MI_BATCH_BUFFER_START instruction should be interpreted
> in the traditional manner or whether they should instead use a new tgl+
> meaning that breaks backward compatibility, but allows nesting into 3rd-
> level batchbuffers.  For previous platforms, the hardware default for thi=
s
> register bit is to maintain backward-compatible behavior unless a context
> intentionally opts into the new behavior; however Xe_HPG flips the hardwa=
re
> default behavior.
>=20
> From a SW perspective, we want to maintain the backward-compatible
> behavior for userspace, so we'll apply a fake workaround to set it back t=
o the
> legacy behavior on platforms where the hardware default is to break
> compatibility.  At the moment there is no Linux userspace that utilizes t=
hird-
> level batchbuffers, so this will avoid userspace from needing to make any
> changes.  using the legacy meaning is the correct thing to do.  If/when w=
e
> have userspace consumers that want to utilize third-level batch nesting, =
we
> can provide a context parameter to allow them to opt-in.
>=20
> Bspec: 45974, 45718
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Looks good.

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 39 +++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h             |  1 +
>  2 files changed, 38 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index aae609d7d85d..97b3cd81b721 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -644,6 +644,37 @@ static void dg1_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  		     DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE);
>  }
>=20
> +static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> +					 struct i915_wa_list *wal)
> +{
> +	/*
> +	 * This is a "fake" workaround defined by software to ensure we
> +	 * maintain reliable, backward-compatible behavior for userspace
> with
> +	 * regards to how nested MI_BATCH_BUFFER_START commands are
> handled.
> +	 *
> +	 * The per-context setting of MI_MODE[12] determines whether the
> bits
> +	 * of a nested MI_BATCH_BUFFER_START instruction should be
> interpreted
> +	 * in the traditional manner or whether they should instead use a
> new
> +	 * tgl+ meaning that breaks backward compatibility, but allows
> nesting
> +	 * into 3rd-level batchbuffers.  When this new capability was first
> +	 * added in TGL, it remained off by default unless a context
> +	 * intentionally opted in to the new behavior.  However Xe_HPG now
> +	 * flips this on by default and requires that we explicitly opt out if
> +	 * we don't want the new behavior.
> +	 *
> +	 * From a SW perspective, we want to maintain the backward-
> compatible
> +	 * behavior for userspace, so we'll apply a fake workaround to set it
> +	 * back to the legacy behavior on platforms where the hardware
> default
> +	 * is to break compatibility.  At the moment there is no Linux
> +	 * userspace that utilizes third-level batchbuffers, so this will avoid
> +	 * userspace from needing to make any changes.  using the legacy
> +	 * meaning is the correct thing to do.  If/when we have userspace
> +	 * consumers that want to utilize third-level batch nesting, we can
> +	 * provide a context parameter to allow them to opt-in.
> +	 */
> +	wa_masked_dis(wal, RING_MI_MODE(engine->mmio_base),
> TGL_NESTED_BB_EN);
> +}
> +
>  static void
>  __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>  			   struct i915_wa_list *wal,
> @@ -651,11 +682,15 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs
> *engine,  {
>  	struct drm_i915_private *i915 =3D engine->i915;
>=20
> +	wa_init_start(wal, name, engine->name);
> +
> +	/* Applies to all engines */
> +	if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 55))
> +		fakewa_disable_nestedbb_mode(engine, wal);
> +
>  	if (engine->class !=3D RENDER_CLASS)
>  		return;
>=20
> -	wa_init_start(wal, name, engine->name);
> -
>  	if (IS_DG1(i915))
>  		dg1_ctx_workarounds_init(engine, wal);
>  	else if (GRAPHICS_VER(i915) =3D=3D 12)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 77f6dcaba2b9..269685955fbd
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2821,6 +2821,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t
> reg)
>  #define MI_MODE		_MMIO(0x209c)
>  # define VS_TIMER_DISPATCH				(1 << 6)
>  # define MI_FLUSH_ENABLE				(1 << 12)
> +# define TGL_NESTED_BB_EN				(1 << 12)
>  # define ASYNC_FLIP_PERF_DISABLE			(1 << 14)
>  # define MODE_IDLE					(1 << 9)
>  # define STOP_RING					(1 << 8)
> --
> 2.25.4

