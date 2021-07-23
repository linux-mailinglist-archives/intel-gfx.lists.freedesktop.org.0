Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 999063D3FFE
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242036EDAD;
	Fri, 23 Jul 2021 17:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975126EDAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:55:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="211932028"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="211932028"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:55:33 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="578067607"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:55:33 -0700
Date: Fri, 23 Jul 2021 10:55:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210723175532.GE1229765@mdroper-desk1.amr.corp.intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
 <20210723174239.1551352-3-matthew.d.roper@intel.com>
 <20210723175407.tiu6zy5z4g3nmn23@ldmartin-desk2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210723175407.tiu6zy5z4g3nmn23@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH v3 02/30] drm/i915/xehp: Extra media engines
 - Part 1 (engine definitions)
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
Cc: intel-gfx@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 23, 2021 at 10:54:07AM -0700, Lucas De Marchi wrote:
> On Fri, Jul 23, 2021 at 10:42:11AM -0700, Matt Roper wrote:
> > From: John Harrison <John.C.Harrison@Intel.com>
> > 
> > Xe_HP can have a lot of extra media engines. This patch adds the basic
> > definitions for them.
> > 
> > v2:
> > - Re-order intel_gt_info and intel_device_info slightly to avoid
> >   unnecessary padding now that we've increased the size of
> >   intel_engine_mask_t.  (Tvrtko)
> > v3:
> > - Drop the .hw_id assignments.  (Lucas)
> > 
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> > drivers/gpu/drm/i915/gt/gen8_engine_cs.c     |  7 ++--
> > drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 44 ++++++++++++++++++++
> > drivers/gpu/drm/i915/gt/intel_engine_types.h | 14 +++++--
> > drivers/gpu/drm/i915/gt/intel_gt_types.h     |  5 ++-
> > drivers/gpu/drm/i915/i915_pci.c              |  5 ++-
> > drivers/gpu/drm/i915/i915_reg.h              |  6 +++
> > drivers/gpu/drm/i915/intel_device_info.h     |  3 +-
> > 7 files changed, 71 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index b29eb9fd0009..461844dffd7e 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -279,7 +279,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
> > 	if (mode & EMIT_INVALIDATE)
> > 		aux_inv = rq->engine->mask & ~BIT(BCS0);
> > 	if (aux_inv)
> > -		cmd += 2 * hweight8(aux_inv) + 2;
> > +		cmd += 2 * hweight32(aux_inv) + 2;
> > 
> > 	cs = intel_ring_begin(rq, cmd);
> > 	if (IS_ERR(cs))
> > @@ -313,9 +313,8 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
> > 		struct intel_engine_cs *engine;
> > 		unsigned int tmp;
> > 
> > -		*cs++ = MI_LOAD_REGISTER_IMM(hweight8(aux_inv));
> > -		for_each_engine_masked(engine, rq->engine->gt,
> > -				       aux_inv, tmp) {
> > +		*cs++ = MI_LOAD_REGISTER_IMM(hweight32(aux_inv));
> > +		for_each_engine_masked(engine, rq->engine->gt, aux_inv, tmp) {
> > 			*cs++ = i915_mmio_reg_offset(aux_inv_reg(engine));
> > 			*cs++ = AUX_INV;
> > 		}
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 4168b9fc59e1..1fc1bd4ad5e3 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -101,6 +101,34 @@ static const struct engine_info intel_engines[] = {
> > 			{ .graphics_ver = 11, .base = GEN11_BSD4_RING_BASE }
> > 		},
> > 	},
> > +	[VCS4] = {
> > +		.class = VIDEO_DECODE_CLASS,
> > +		.instance = 4,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 11, .base = XEHP_BSD5_RING_BASE }
> 
> another thing I raised in my previous review was this ver == 11 here.
> Was this not changed on purpose ?

Woops, looks like I missed that comment in the mix of discussion about
hw_id.  I'll respin this one.


Matt

> 
> Lucas De Marchi

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
