Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 566A97A94CB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 15:29:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE0910E0F2;
	Thu, 21 Sep 2023 13:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3228210E5D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 13:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695302953; x=1726838953;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/a58PLma8C/+NUOhYQPX920vtETqX9tsxV1qn5kHO8I=;
 b=jOqmWcwVFwnmbQCuAwOhgVtLSq0olEn1GTq0LiS4DPefKe/IonXfnYU/
 B6RpoBokzMhFRePNgaAwcIAJiEmEIO0/0l/13zj77O5QdoTsF3DicJ42t
 +he2Wbx63TRrKlTF1zhTb+OqkHU8OnTntl+6g7F1FMEoZW2mNNJobMWzA
 kvrHVtobwzuUp5O1i8Pckd+DY5T0AHv6Eq/fVj2NG1vFfiEeg6uBlzWB9
 wEBeLbuk8P8sYpAwuNx8eagIggFpidJuejooMLzxpx9FsY1ElaJGRfsDF
 AtnamwDABz5oapzwXeOyNld9EkN27U7gyIHVu1kQs3X07M6H9iQbrLKph w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="411462647"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="411462647"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:18:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="696727694"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="696727694"
Received: from skalitha-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.215.150.18])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:18:39 -0700
Date: Thu, 21 Sep 2023 15:18:32 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZQxCqPnidAxZoJ3r@ashyti-mobl2.lan>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-3-nirmoy.das@intel.com>
 <ZQwY5spaJyMUjKIv@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZQwY5spaJyMUjKIv@ashyti-mobl2.lan>
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Create a kernel context for
 GGTT updates
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@linux.intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

[...]

> >  	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
> >  	cleanup_status_page(engine);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index a7e677598004..a8f527fab0f0 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -416,6 +416,9 @@ struct intel_engine_cs {
> >  	struct llist_head barrier_tasks;
> >  
> >  	struct intel_context *kernel_context; /* pinned */
> > +	struct intel_context *bind_context; /* pinned, only for BCS0 */
> > +	/* mark the bind context's availability status */
> > +	bool bind_context_ready;
> 
> So... this is used only once, set to ready and move forward...
> this would never be false, otherwise it means that we failed to
> create the bind_context...
> 
> >  	/**
> >  	 * pinned_contexts_list: List of pinned contexts. This list is only
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 449f0b7fc843..cd0ff1597db9 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -1019,3 +1019,21 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
> >  	else
> >  		return I915_MAP_WC;
> >  }
> > +
> > +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
> > +{
> > +	struct intel_engine_cs *engine = gt->engine[BCS0];
> > +
> > +	if (engine && engine->bind_context)
> > +		engine->bind_context_ready = ready;
> > +}
> > +
> > +bool intel_gt_is_bind_context_ready(struct intel_gt *gt)
> > +{
> > +	struct intel_engine_cs *engine = gt->engine[BCS0];
> > +
> > +	if (engine)
> > +		return engine->bind_context_ready;
> 
> ... can't we just use the bind_context being NULL as a boolean
> meaning and save this extra boolean that will always stay there
> and always hold the same value?

Please ignore this comment. Reading the next patches I see that I
misunderstood this part... there are some toggles ready/not ready
later on.

Andi
