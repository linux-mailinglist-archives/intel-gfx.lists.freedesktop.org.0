Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 342983F56F4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 06:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63EC897D4;
	Tue, 24 Aug 2021 04:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2AC6897C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 04:06:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204367308"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="204367308"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 21:06:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="574870042"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 21:06:23 -0700
Date: Mon, 23 Aug 2021 21:06:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, John Harrison <John.C.Harrison@intel.com>
Message-ID: <20210824040621.GI461228@mdroper-desk1.amr.corp.intel.com>
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
 <20210805163647.801064-9-matthew.d.roper@intel.com>
 <5c838e5d-6311-0abb-4a5c-44c7e55b990c@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5c838e5d-6311-0abb-4a5c-44c7e55b990c@linux.intel.com>
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

On Mon, Aug 23, 2021 at 10:26:06AM +0100, Tvrtko Ursulin wrote:
> 
> On 05/08/2021 17:36, Matt Roper wrote:
> > For tgl+, the per-context setting of MI_MODE[12] determines whether
> > the bits of a nested MI_BATCH_BUFFER_START instruction should be
> > interpreted in the traditional manner or whether they should
> > instead use a new tgl+ meaning that breaks backward compatibility, but
> > allows nesting into 3rd-level batchbuffers.  For previous platforms,
> > the hardware default for this register bit is to maintain
> > backward-compatible behavior unless a context intentionally opts into
> > the new behavior; however Xe_HPG flips the hardware default behavior.
> > 
> > > From a SW perspective, we want to maintain the backward-compatible
> > behavior for userspace, so we'll apply a fake workaround to set it back
> > to the legacy behavior on platforms where the hardware default is to
> > break compatibility.  At the moment there is no Linux userspace that
> > utilizes third-level batchbuffers, so this will avoid userspace from
> > needing to make any changes.  using the legacy meaning is the correct
> > thing to do.  If/when we have userspace consumers that want to utilize
> > third-level batch nesting, we can provide a context parameter to allow
> > them to opt-in.
> > 
> > Bspec: 45974, 45718
> > Cc: John Harrison <John.C.Harrison@Intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 39 +++++++++++++++++++--
> >   drivers/gpu/drm/i915/i915_reg.h             |  1 +
> >   2 files changed, 38 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index aae609d7d85d..97b3cd81b721 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -644,6 +644,37 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
> >   		     DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE);
> >   }
> > +static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> > +					 struct i915_wa_list *wal)
> > +{
> > +	/*
> > +	 * This is a "fake" workaround defined by software to ensure we
> > +	 * maintain reliable, backward-compatible behavior for userspace with
> > +	 * regards to how nested MI_BATCH_BUFFER_START commands are handled.
> > +	 *
> > +	 * The per-context setting of MI_MODE[12] determines whether the bits
> > +	 * of a nested MI_BATCH_BUFFER_START instruction should be interpreted
> > +	 * in the traditional manner or whether they should instead use a new
> > +	 * tgl+ meaning that breaks backward compatibility, but allows nesting
> > +	 * into 3rd-level batchbuffers.  When this new capability was first
> > +	 * added in TGL, it remained off by default unless a context
> > +	 * intentionally opted in to the new behavior.  However Xe_HPG now
> > +	 * flips this on by default and requires that we explicitly opt out if
> > +	 * we don't want the new behavior.
> > +	 *
> > +	 * From a SW perspective, we want to maintain the backward-compatible
> > +	 * behavior for userspace, so we'll apply a fake workaround to set it
> > +	 * back to the legacy behavior on platforms where the hardware default
> > +	 * is to break compatibility.  At the moment there is no Linux
> > +	 * userspace that utilizes third-level batchbuffers, so this will avoid
> > +	 * userspace from needing to make any changes.  using the legacy
> > +	 * meaning is the correct thing to do.  If/when we have userspace
> > +	 * consumers that want to utilize third-level batch nesting, we can
> > +	 * provide a context parameter to allow them to opt-in.
> > +	 */
> > +	wa_masked_dis(wal, RING_MI_MODE(engine->mmio_base), TGL_NESTED_BB_EN);
> > +}
> > +
> >   static void
> >   __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
> >   			   struct i915_wa_list *wal,
> > @@ -651,11 +682,15 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > +	wa_init_start(wal, name, engine->name);
> > +
> > +	/* Applies to all engines */
> > +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
> > +		fakewa_disable_nestedbb_mode(engine, wal);
> > +
> >   	if (engine->class != RENDER_CLASS)
> >   		return;
> 
> Is it intentional to skip wa_init_finish on non-render engines? Would be a
> bit odd although granted no significant functional difference apart from not
> logging and maybe not trimming the list storage.

No, just an oversight.  Like you said, it doesn't look like it really
matters too much, but I'll write up a fix for it tomorrow.

Thanks.


Matt

> 
> Regards,
> 
> Tvrtko
> 
> > -	wa_init_start(wal, name, engine->name);
> > -
> >   	if (IS_DG1(i915))
> >   		dg1_ctx_workarounds_init(engine, wal);
> >   	else if (GRAPHICS_VER(i915) == 12)
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 77f6dcaba2b9..269685955fbd 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2821,6 +2821,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> >   #define MI_MODE		_MMIO(0x209c)
> >   # define VS_TIMER_DISPATCH				(1 << 6)
> >   # define MI_FLUSH_ENABLE				(1 << 12)
> > +# define TGL_NESTED_BB_EN				(1 << 12)
> >   # define ASYNC_FLIP_PERF_DISABLE			(1 << 14)
> >   # define MODE_IDLE					(1 << 9)
> >   # define STOP_RING					(1 << 8)
> > 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
