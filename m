Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4768A9D39B5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:43:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D6610E2CA;
	Wed, 20 Nov 2024 11:43:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Li6Vf30t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BE210E2CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 11:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732102997; x=1763638997;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uH1uFL08+dIdR05jD3oOuPHvW/RKyLEwKTGxLKwtL04=;
 b=Li6Vf30t9nUvCKdEtcrzPX9xoFbrYBHs8Ayq/p3diIERoCUE30iEfcsH
 vbZiLIKBicaDePka65kzA1L+qJ1+NvY7+JHCoQ6WRHG9agxaP/1V1lP/E
 MdFHoruyhZWKYIlJzD5X1xuMxnsNrz/r0iZy6FsU0bM93QgitA3Q2NVnC
 AuMQIxaodvtwZXitjSvzmr28oNn5rKBNhkiqMsSTLtP9rgu/wclPYch05
 bILPF57ef2QVKjNFth3fWlN84ugtFG/HSc3sJz2nD+hgPiH5GQAL4RKU1
 PpuBbrMoWaQ9rUDmqyoiO/ZPtUWxVKCfjyh2XmG9DQskjU5WlX/YK2cLc g==;
X-CSE-ConnectionGUID: fndhx9sXRrqyQHGaAcjYjw==
X-CSE-MsgGUID: Q/aAOvbITYisB00VFexr/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="54656351"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="54656351"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:43:17 -0800
X-CSE-ConnectionGUID: t/tH4qpMRHa/ufJAtfB7EQ==
X-CSE-MsgGUID: mhuGGQUCQ5muLStYC5YFJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90046955"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.40])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:43:15 -0800
Date: Wed, 20 Nov 2024 12:43:12 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Eugene Kobyak <eugene.kobyak@intel.com>, intel-gfx@lists.freedesktop.org,
 John Harrison <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915: Fixed NULL pointer dereference in capture_engine
Message-ID: <Zz3LUG_OpCkPX1sv@ashyti-mobl2.lan>
References: <5a42bhkoaoed2mky6343qz35pdyzfz6pqgyczrywqgwb4ezipv@be2aiql3bmih>
 <Zz24DtYMdbPGfpXh@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zz24DtYMdbPGfpXh@ashyti-mobl2.lan>
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

Hi Eugene,

> >  	intel_engine_get_hung_entity(engine, &ce, &rq);
> > -	if (rq && !i915_request_started(rq))
> > -		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> > -			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> > -
> >  	if (rq) {
> > +		if (!i915_request_started(rq)) {
> 
> why are you breaking the if here?

Just to be clear, this is not a binding comment as you are
merging to "if (rq)". But I prefer the previous style as the line
of this drm_info() is already too long and with one more level of
indentation is even longer.

In any case:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

and now I'm really cc'eing John.

Andi

> > +			u16 guc_id = ce ? ce->guc_id.id : 0;
> 
> good catch!
> 
> Andi
> 
> > +			drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> > +				 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
> > +		}
> >  		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
> >  		i915_request_put(rq);
> >  	} else if (ce) {
> > -- 
> > 2.34.1
