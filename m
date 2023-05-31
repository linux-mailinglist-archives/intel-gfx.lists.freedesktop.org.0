Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 239EF717FB4
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 14:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8850110E1C5;
	Wed, 31 May 2023 12:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EECF10E1C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 12:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685535325; x=1717071325;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=s5fyuU6+a2hh1f00zDflXGOs9XfV3JsPDMPj9DkfjCs=;
 b=B+ch5owwwygDX2ZhXkhYVBUCRjVaPjuX9i1+zrYwSqtOMb/ke2Z3yHxT
 I/me7OpxIdG9frGHMfco0e8xsZd8YZyVVZYIZsUSiaGxCWvVVjplv/gjg
 ZAzAqj4ddHpkv6zOdmxFgCJ0BZ55anIjVosWqBDeKMaN80AH3wfocIy7h
 nZwyNxK63s3uA0t+zZbRpH6UDikNUbpQan0cVy81JfCI+NA3/qf8VuzFk
 QHlST5FDVCL9LSk9DN5fQwkkIlgMQ5pjc0s1NHXTPPUoyiCnbVfEFZidw
 Lt80/H7+q1MnzS9EhZd/OS6M51EW8aub53Fw9F5P9kXkUNKSc+4PptC/7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="352714895"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="352714895"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 05:14:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="710046842"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="710046842"
Received: from itaraban-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.19])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 05:14:56 -0700
Date: Wed, 31 May 2023 14:14:53 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZHc6PX+ejjVHN8Lx@ashyti-mobl2.lan>
References: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
 <f03e077a-538b-5ff2-5932-f2d2c2ec0662@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f03e077a-538b-5ff2-5932-f2d2c2ec0662@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround 14016712196
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

> > @@ -218,6 +242,16 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
> >   		u32 flags = 0;
> >   		u32 *cs, count;
> > +		/* Wa_14016712196 */
> > +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
> > +			/* dummy PIPE_CONTROL + depth flush */
> > +			cs = intel_ring_begin(rq, 6);
> > +			err = mtl_dummy_pipe_control(rq, cs);
> > +			if (err)
> > +				return err;
> > +		}
> > +
> 
> In case gen12_emit_flush_rcs is called with EMIT_BARRIER = (EMIT_INVALIDATE
> | EMIT_FLUSH) dummy pipe will be inserted twice, is it OK?

good point... I also meant to ask this, indeed. I assumed that
before the pipe control we needed the dummy pipe. Is that the
case, Tejas?

> >   		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
> >   		flags |= PIPE_CONTROL_TLB_INVALIDATE;
> >   		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
> > @@ -733,6 +767,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >   		     PIPE_CONTROL_DC_FLUSH_ENABLE |
> >   		     PIPE_CONTROL_FLUSH_ENABLE);
> > +	/* Wa_14016712196 */
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +		/* dummy PIPE_CONTROL + depth flush */
> > +		cs = gen12_emit_pipe_control(cs, 0,
> > +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> 
> How do we know there is enough space for dummy pipe?

This should be ensured by intel_ring_begin().

Andi

> Regards
> Andrzej
> 
> > +
> >   	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
> >   		/* Wa_1409600907 */
> >   		flags |= PIPE_CONTROL_DEPTH_STALL;
