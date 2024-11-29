Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7969DC33E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 13:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5109110E025;
	Fri, 29 Nov 2024 12:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WTGrboxP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4B110E025
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 12:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732882352; x=1764418352;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nDwDtKbnuLQ0drmniz/mTOenLaOdNPG0xsucaU8Nwe8=;
 b=WTGrboxPPgC5RH0zM7tC4llKe7DRcSGAs9lqG3WAbpqFpD3w7pwnKoW1
 9Xn/vyKDqhkyIawT4Zih3HwROmBKj2HRG1hnWF2VfeSfRxORGDt41VXib
 eEhClOATL6xN4q+iMr9Y5nTmCZzq7Qb5XWVDMeQa2XJGi25xdZAvACUki
 yIu9Ha+5C6jBq+U9ECPwmJ7uyG5zHccC9jVT6j2cQLf23a4+oGUlNpufZ
 g4eUx6zYbB553Vi1nIa5CkAtHmxZWA+lsPZcOqNYxrXH5IDngsvDelER1
 x85rG0z47rEGfYBrzFQb1o77Vn1Ywt0wTsrAacHZdgJz1bzxfvA+selHz Q==;
X-CSE-ConnectionGUID: lXnKRewCQs2J45yXEdHcbg==
X-CSE-MsgGUID: 01aRaCpDTem/t2a06OnAXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="37050110"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="37050110"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 04:12:32 -0800
X-CSE-ConnectionGUID: Jnuh+FmTQR65GZWKWljbNA==
X-CSE-MsgGUID: 0Z8MghGoR+arywaqGI0rHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="92588348"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.213])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 04:12:29 -0800
Date: Fri, 29 Nov 2024 13:12:25 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: Eugene Kobyak <eugene.kobyak@intel.com>,
 intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH v4] drm/i915: Fix NULL pointer dereference in
 capture_engine
Message-ID: <Z0mvqW3K2UMEpwGD@ashyti-mobl2.lan>
References: <sspixcrejd5nbhijuo7o3z5agbgyq637wc7gph7ajrs3lnls6g@5ljanfmvccyf>
 <c74dd6ad-e9b4-41c7-a93f-c08370360fd3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c74dd6ad-e9b4-41c7-a93f-c08370360fd3@intel.com>
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

On Thu, Nov 28, 2024 at 06:32:28PM -0800, John Harrison wrote:
> On 11/28/2024 13:28, Eugene Kobyak wrote:
> > When the intel_context structure contains NULL,
> > it raises a NULL pointer dereference error in drm_info().
> > 
> > Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> > Cc: John Harrison <John.C.Harrison@Intel.com>
> > Cc: <stable@vger.kernel.org> # v6.3+
> > Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
> > ---
> > v2:
> >    - return drm_info to separate condition
> > v3:
> >    - create separate condition which generate string if intel_context exist
> > v4:
> >    - rollback and add check intel_context in log condition
> >   drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> > index 135ded17334e..56f05a18870c 100644
> > --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> > +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> > @@ -1643,7 +1643,7 @@ capture_engine(struct intel_engine_cs *engine,
> >   		return NULL;
> >   	intel_engine_get_hung_entity(engine, &ce, &rq);
> > -	if (rq && !i915_request_started(rq))
> > +	if (rq && !i915_request_started(rq) && ce)
> >   		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> >   			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> But now you don't get a message when there is a request without the context
> pointer. Which can clearly happen because otherwise you wouldn't have hit a
> null pointer dereference in the first place.

do we need the guc_id at all?

Andi
