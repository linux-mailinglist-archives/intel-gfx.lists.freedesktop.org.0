Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC87C8E2D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 22:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0089310E034;
	Fri, 13 Oct 2023 20:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C52310E034
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697228074; x=1728764074;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lNA+WFWd5LUZLrelwYd3CRC0RuUA8l0/eFTMHvPK0eo=;
 b=HhHt5WwLaWkA4zQBf+SNROfKtR86w8R4y4BN6oOfVz3sQGvCReL9oRuP
 qh5g0btzaSJRfKY+/S4ybTqx0z3K0QKtdH1liC/hsXd4WjiX2NgZCT/hu
 Z+wL2IDobUq8LCxO3GDfrXMEgEOpHU5O2UWKEUV+b4VWhc5HIFey+4p6S
 iyxm8UwzL1f5wqEiZg3GG+jSaM8Iz7uhWURYMzzsFCL8KGNu20J6ipkrf
 eN5x0hjUdmkHSOs3CaAYSvSlhRdzjhlXcODEB8zjEyLE66tfOlmFLJNXi
 K2JpZrQd+OyKjxLJs/jpH9R/kgG8zJrcTbx6nb5UjoedEM+npNC+ViSxV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="364617805"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="364617805"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 13:14:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="758602146"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="758602146"
Received: from phamt-mobl2.ccr.corp.intel.com (HELO intel.com)
 ([10.214.145.117])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 13:14:28 -0700
Date: Fri, 13 Oct 2023 22:14:23 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZSmlH2t9HeD/yEz6@ashyti-mobl2.lan>
References: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
 <20231013175218.2664309-4-jonathan.cavitt@intel.com>
 <863aa53f-a4a9-452b-87d5-df3abdee1f8c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <863aa53f-a4a9-452b-87d5-df3abdee1f8c@intel.com>
Subject: Re: [Intel-gfx] [PATCH v14 3/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 saurabhg.gupta@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi John,

...

> > @@ -560,6 +562,17 @@ static int __uc_init_hw(struct intel_uc *uc)
> >   	guc_info(guc, "submission %s\n", str_enabled_disabled(intel_uc_uses_guc_submission(uc)));
> >   	guc_info(guc, "SLPC %s\n", str_enabled_disabled(intel_uc_uses_guc_slpc(uc)));
> > +	/*
> > +	 * The full GT reset will have cleared the TLB caches and flushed the
> > +	 * G2H message queue; we can release all the blocked waiters.
> > +	 */
> > +	if (intel_guc_tlb_invalidation_is_available(guc)) {
> > +		xa_lock_irq(&guc->tlb_lookup);
> > +		xa_for_each(&guc->tlb_lookup, i, wait)
> > +			wake_up(&wait->wq);
> > +		xa_unlock_irq(&guc->tlb_lookup);
> > +	}
> > +
> This is not the right place for this. This is an init function but this
> comment is talking about resets and is doing things that assume the system
> has been running for some time.
> 
> Yes, hw init might happen as part of a reset but this is reset only
> processing and it should be in a reset specific code path.
> 
> What was wrong with the previous version that had the code in
> intel_guc_submission_reset?

It was wrongly placed there because at that point the gt reset
was not totally complete but it was still mid-way through.

The threads needed a bit more time in order to wait for the GT to
be completely alive after the reset.

The works need to be woken up at the end of the gt reset, where,
besides, we need to clear up the xa_array with work queues.

First Jonathan added it in driectly at the end of the
intel_gt_reset(), but that's not the right place as this is a UC
related operation, rather than GT.

Following the reset flow this looked like the right place, called
after the reset in the UC part.

What's wrong with placing it it here?

Andi
