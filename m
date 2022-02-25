Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2374C4EFA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 20:36:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF7A10E7A0;
	Fri, 25 Feb 2022 19:36:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB8110E7A0
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 19:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645817770; x=1677353770;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZqB2ZyUfIoFH/dxK+5mx0cnKMN51BbMbh5IY9fch7yc=;
 b=R3yCJGB3axlLkk8UkRjKOlA2yGp9wgL9HLdKHPgJ/cVwDpOUlXaF8IgI
 4GHSfBVcUFBsRANFWoAiEFNBscDCDyDPmcAgoC038UAYjTmfzIMxMjKzR
 VDfcplEoN+R+0M521UHBH025xl8njZxD83pGijx9/HPDWeAsdwKs5FLhh
 92fD2+FwQTnS9GqAKeq9dmoaIKBR9B4J3A4S5wT3zvyCrVYKNr/4agV/J
 52DOnSundHgcwfpBQKpZIiio/bWPkm0Mtc3yK021nMfcYOCk561T12KGw
 ZMDAYGM36XHz+JPmhT4kCfsGgoBj5F4Yf/wj4cAvbr1uwP8ZnU2GbiVVJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="239970463"
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="239970463"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 11:36:09 -0800
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="506794661"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 11:36:09 -0800
Date: Fri, 25 Feb 2022 11:36:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <Yhkvp7dqBT2avZKk@mdroper-desk1.amr.corp.intel.com>
References: <20220211052333.12306-1-clinton.a.taylor@intel.com>
 <Yg7gH5EAIimA8fAi@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yg7gH5EAIimA8fAi@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/dg2: add Wa_14014947963
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 17, 2022 at 03:54:09PM -0800, Matt Roper wrote:
> On Thu, Feb 10, 2022 at 09:23:33PM -0800, clinton.a.taylor@intel.com wrote:
> > From: Clint Taylor <clinton.a.taylor@intel.com>
> > 
> > BSPEC: 46123
> > v2: Address review feedback [MattR]
> > v3: move register definition to gt_regs [MattR]
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> although see below for a couple style tweaks we should make while
> applying this.
> 
> Also, I think we'll need to wait for the maintainers to do a
> backmerge/crossmerge in drm-intel-gt-next (which I think they're
> planning to do soon) before applying this since that branch is still
> missing all the recent register rework.

This is done now, so applied to drm-intel-gt-next (with the minor
whitespace and comment tweak mentioned).  Thanks for the patch.


Matt

> 
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
> >  2 files changed, 8 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index a6f0220c2e9f..5c8c3bc65acc 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -124,6 +124,9 @@
> >  #define   ECOCHK_PPGTT_WT_HSW		(0x2 << 3)
> >  #define   ECOCHK_PPGTT_WB_HSW		(0x3 << 3)
> >  
> > +#define VF_PREEMPTION			_MMIO(0x83a4)
> > +#define  PREEMPTION_VERTEX_COUNT	REG_GENMASK(15, 0)
> 
> While applying we'll hit some merge conflicts due to the cleanup of the
> file that just landed; while resolving the conflict, we should add an
> extra space between 'define' and 'PREEMPTION_VERTEX_COUNT' and tab over
> farther before the REG_GENMASK to match the style of the rest of the
> file.
> 
> > +
> >  #define GEN8_RC6_CTX_INFO		_MMIO(0x8504)
> >  
> >  #define GAC_ECO_BITS			_MMIO(0x14090)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index b146a393cd79..9416b1434c64 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -689,6 +689,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
> >  		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
> >  			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
> > +
> > +	/* wa_14014947963: dg2_g10 [B0..NONE] dg2_g11 dg2_g12 */
> 
> We can probably just simplify the comment down to "Wa_14014947963:dg2"
> since that's what we've been doing with most of the other DG2
> workarounds lately.  Including the steppings in the comment isn't
> terribly useful since the next line shows them pretty clearly (and we
> run the risk of the comment becoming stale if we update the code later).
> We can tweak that while applying the patch as well.
> 
> 
> Matt
> 
> > +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> > +		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > +		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
> >  }
> >  
> >  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> > -- 
> > 2.34.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
