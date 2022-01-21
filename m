Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63C1496722
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 22:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E8410E1C5;
	Fri, 21 Jan 2022 21:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013FC10E1C5;
 Fri, 21 Jan 2022 21:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642799386; x=1674335386;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bOM1fyuKnJzx2cmWhR/vrzuw3hZkmkBE+Fr+OSn1WyE=;
 b=etWwtVSZTEVPnYOpRAJjGPaVDnew5fhzPNl7gNqDTpTUPcYQamIN7HvW
 SBGRPP4A5JfagyxXphRHKXbVMQCWs9MVAYLbGV0afPcQCrhuKSTy8xxaI
 +n4M1dQNdooiT+QmHVPX7EW530NaX/duTBTsy3qnWBjKIIthzpAMPygs3
 /e+alGkXOKgo3qAP/ZQaVKthmKIozjRE6A94yndAsEe40x7+HnVs/ZqKK
 OzO4SdaUkn+3U7PKzTZu7x5kd7fWbu9XpS8LJcJRzEij/F8TsoT345ztd
 PDcsi0zoK2Hr7y0BhPJWiXHj/Bq+Gk1ph+lvaSnT3x+5EKqDZO8WO0ftd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="270170947"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="270170947"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 13:09:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="476074749"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 13:09:45 -0800
Date: Fri, 21 Jan 2022 13:03:59 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220121210359.GA11038@jons-linux-dev-box>
References: <20220120183655.3228-1-matthew.brost@intel.com>
 <20220120183655.3228-2-matthew.brost@intel.com>
 <87k0et8s41.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87k0et8s41.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Don't check CT descriptor
 status before CT write / read
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 21, 2022 at 09:28:46AM +0200, Jani Nikula wrote:
> On Thu, 20 Jan 2022, Matthew Brost <matthew.brost@intel.com> wrote:
> > Don't check CT descriptor status, unless CONFIG_DRM_I915_DEBUG_GUC is
> > set, before CT write / read as this could result in a read across the
> > PCIe bus thus adding latency to every CT write / read. On well behavied
> > systems this vaue should always read as zero. For some reason it doesn't
> > the CT channel is broken and will eventually recover from a GT reset,
> > albeit the GT reset will not be triggered immediately by seeing that
> > descriptor status is non-zero.
> >
> > v2:
> >  (CI)
> >   - Fix build error (hide corrupted label in write function behind
> >     CONFIG_DRM_I915_DEBUG_GUC)
> >
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > index de89d40abd38d..948cf31429412 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > @@ -379,8 +379,10 @@ static int ct_write(struct intel_guc_ct *ct,
> >  	u32 *cmds = ctb->cmds;
> >  	unsigned int i;
> >  
> > +#ifdef CONFIG_DRM_I915_DEBUG_GUC
> >  	if (unlikely(desc->status))
> >  		goto corrupted;
> > +#endif
> 
> Please don't add #ifdefs inline. You can use
> IS_ENABLED(CONFIG_DRM_I915_DEBUG_GUC) in if statements, but otherwise
> the code needs to be split out to a separate function.
> 

Sure, but I feel like I've actually been by someone else to not use the
IS_ENABLED macro and use ifdefs inlines...

Matt

> BR,
> Jani.
> 
> >  
> >  	GEM_BUG_ON(tail > size);
> >  
> > @@ -445,11 +447,13 @@ static int ct_write(struct intel_guc_ct *ct,
> >  
> >  	return 0;
> >  
> > +#ifdef CONFIG_DRM_I915_DEBUG_GUC
> >  corrupted:
> >  	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
> >  		 desc->head, desc->tail, desc->status);
> >  	ctb->broken = true;
> >  	return -EPIPE;
> > +#endif
> >  }
> >  
> >  /**
> > @@ -815,8 +819,10 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
> >  	if (unlikely(ctb->broken))
> >  		return -EPIPE;
> >  
> > +#ifdef CONFIG_DRM_I915_DEBUG_GUC
> >  	if (unlikely(desc->status))
> >  		goto corrupted;
> > +#endif
> >  
> >  	GEM_BUG_ON(head > size);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
