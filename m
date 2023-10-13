Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5F67C83AB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 12:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25B410E5D5;
	Fri, 13 Oct 2023 10:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439F810E5D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 10:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697194184; x=1728730184;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RF4y214vhLZA0ogKiIMPEwMVXyVkV7vFI+DtETXgkJ0=;
 b=JaPkOqBtnQpaIWq3mUzqTMdu4SpQ42XcxlwmmMtyswWA6P6iPPrUfMNj
 C09yKQI6rhbeaCI/1+favPEApSVxyb8oDJFPp9QYLttk301Vq5vzuOH7q
 ADXbTNNThkXxrhOFJItBb1Bw4vmHRYlpcMybRe2SyJsrAahIKrtaxa99g
 V+nZnOqwSj4EotNkPeDthkADJi/zypG91/xlPWWqx1H7GW/jDp6ExOTi8
 xCYJLrW2N/3Et0JWrj9lPtN7hqIsaACBB99nhXnta9opOvsh8yTJx8uEz
 l4Bhi43ZvKK40YtszQlUQcQx/V+g8Dw0IAVEIeO8avNbhsakt4791Okso w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="3752290"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; 
   d="scan'208";a="3752290"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:49:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="898512678"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="898512678"
Received: from kesooi-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.155.173])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:47:43 -0700
Date: Fri, 13 Oct 2023 12:49:28 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZSkguJl8n+qzjAtj@ashyti-mobl2.lan>
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
 <20231012223826.2556700-5-jonathan.cavitt@intel.com>
 <fe011bb2-3377-4d96-a256-5434ff9319f0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe011bb2-3377-4d96-a256-5434ff9319f0@intel.com>
Subject: Re: [Intel-gfx] [PATCH v13 4/7] drm/i915: No TLB invalidation on
 suspended GT
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 saurabhg.gupta@intel.com, chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi John,

On Thu, Oct 12, 2023 at 06:08:11PM -0700, John Harrison wrote:
> On 10/12/2023 15:38, Jonathan Cavitt wrote:
> > In case of GT is suspended, don't allow submission of new TLB invalidation
> > request and cancel all pending requests. The TLB entries will be
> > invalidated either during GuC reload or on system resume.
> > 
> > Signed-off-by: Fei Yang <fei.yang@intel.com>
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > CC: John Harrison <john.c.harrison@intel.com>
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 22 ++++++++++++-------
> >   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 ++++++
> >   3 files changed, 22 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > index 0949628d69f8b..2b6dfe62c8f2a 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > @@ -537,4 +537,5 @@ int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
> >   int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
> >   int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> >   				    const u32 *payload, u32 len);
> > +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
> >   #endif
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 1377398afcdfa..3a0d20064878a 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -1796,13 +1796,24 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
> >   	intel_context_put(parent);
> >   }
> > -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> > +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
> >   {
> >   	struct intel_guc_tlb_wait *wait;
> > +	unsigned long i;
> > +
> > +	if (HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915)) {
> Why the change from 'if(!is_available) return' to 'if(HAS_) {doStuff}'?

I believe the inversion of the logic is purely for aesthetic (I
preferred it how it was before so to save some level of
indentation, but this is pure taste).

While as for the statement, this was changed because at the
moment this function is called after reset, not all the
components have completed their reset. E.g., the GT is still in
the middle of it.

Another way to improve this is to call
wake_up_all_tlb_invalidate() at the end of gt_reset() in order to
clear up the queue of requests.

Andi
