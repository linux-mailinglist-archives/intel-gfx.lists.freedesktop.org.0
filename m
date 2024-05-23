Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53D38CD50B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B0B10E0FA;
	Thu, 23 May 2024 13:52:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V95nzhMH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C62D10E0FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716472372; x=1748008372;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UMzwEEbJKji8VXOr0WsQUwymygxympZmIdi9Ua4qXGY=;
 b=V95nzhMHOk1FoMQ+lh+yaU3icL8XsUq222kZMDiOd7JWDWwwmB4ps8c3
 +NJxZEEQyYJNrVWK97ykjMUE+OP6G8uoVp6p05uDRquAGPREYcPDdfxa+
 78EV5RIZMTmM9yJtGxTWWMuo/b1o+xOkdG2o7WUkxQLxflsR+HWA9g8sF
 UVtdkBOsC1JvRUqMHOWf+SqfKMNqArKMwFLWMeoKqZgdIPkxjoUF0uwDM
 nb/4x97B84lKmIFtTUfdF3J+2u18m3ndr3oqQoBG9oAv+gUSu4CjsAa1Z
 +ik7MpfOp8XLjPHcHDVuRbYtScB7DWJrPTmRIH0GChxrOuipg0DwrdwOM g==;
X-CSE-ConnectionGUID: tJToRVeoRmaNOl4ZlC+M6g==
X-CSE-MsgGUID: QkcSIPa9Qi22dIJLS0e5dw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23923623"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="23923623"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:52:52 -0700
X-CSE-ConnectionGUID: tdBKzD90QLyfPK+kvsV93w==
X-CSE-MsgGUID: EfmRHt6QRzGat/khny4wlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33650914"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 06:52:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 16:52:47 +0300
Date: Thu, 23 May 2024 16:52:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 intel-gfx@lists.freedesktop.org, shawn.c.lee@intel.com,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Message-ID: <Zk9KLw_ieclfQKY-@intel.com>
References: <20240520165634.1162470-1-vidya.srinivas@intel.com>
 <20240522152916.1702614-1-vidya.srinivas@intel.com>
 <5e5660ac-e14b-4759-a6f6-38cc55d37246@ursulin.net>
 <Zk8mM0bh5QMGcSGL@intel.com>
 <0f459a5b-4926-40ea-820e-ab0e5516a821@ursulin.net>
 <Zk81eDBUlz_axOn4@intel.com>
 <44eefd9c-4086-45a9-b555-d5d201d27a57@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <44eefd9c-4086-45a9-b555-d5d201d27a57@ursulin.net>
X-Patchwork-Hint: comment
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

On Thu, May 23, 2024 at 02:14:56PM +0100, Tvrtko Ursulin wrote:
> 
> On 23/05/2024 13:24, Ville Syrj�l� wrote:
> > On Thu, May 23, 2024 at 01:07:24PM +0100, Tvrtko Ursulin wrote:
> >>
> >> On 23/05/2024 12:19, Ville Syrj�l� wrote:
> >>> On Thu, May 23, 2024 at 09:25:45AM +0100, Tvrtko Ursulin wrote:
> >>>>
> >>>> On 22/05/2024 16:29, Vidya Srinivas wrote:
> >>>>> In some scenarios, the DPT object gets shrunk but
> >>>>> the actual framebuffer did not and thus its still
> >>>>> there on the DPT's vm->bound_list. Then it tries to
> >>>>> rewrite the PTEs via a stale CPU mapping. This causes panic.
> >>>>>
> >>>>> Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
> >>>>> Cc: stable@vger.kernel.org
> >>>>> Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
> >>>>> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> >>>>> ---
> >>>>>     drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 ++-
> >>>>>     1 file changed, 2 insertions(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> >>>>> index 3560a062d287..e6b485fc54d4 100644
> >>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> >>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> >>>>> @@ -284,7 +284,8 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
> >>>>>     static inline bool
> >>>>>     i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
> >>>>>     {
> >>>>> -	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
> >>>>> +	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
> >>>>> +		!obj->is_dpt;
> >>>>
> >>>> Is there a reason i915_gem_object_make_unshrinkable() cannot be used to
> >>>> mark the object at a suitable place?
> >>>
> >>> Do you have a suitable place in mind?
> >>> i915_gem_object_make_unshrinkable() contains some magic
> >>> ingredients so doesn't look like it can be called willy
> >>> nilly.
> >>
> >> After it is created in intel_dpt_create?
> >>
> >> I don't see that helper couldn't be called. It is called from madvise
> >> and tiling for instance without any apparent special considerations.
> > 
> > Did you actually read through i915_gem_object_make_unshrinkable()?
> 
> Briefly, and also looked around how it is used. I don't immediately 
> understand which part concerns you and it is also quite possible I am 
> missing something.

The shrink_pin magic says you can't use this willy nilly.

> 
> But see for example how it is used in intel_context.c+intel_lrc.c to 
> protect the context state object from the shrinker while it is in use by 
> the GPU. It does not appear any black magic is required.
> 
> Question also is does that kind of lifetime aligns with the DPT use case.
> 
> >> Also, there is no mention of this angle in the commit message so I
> >> assumed it wasn't considered. If it was, then it should have been
> >> mentioned why hacky solution was chosen instead...
> > 
> > I suppose.
> > 
> >>
> >>> Anyways, looks like I forgot to reply that I already pushed this
> >>> with this extra comment added:
> >>> /* TODO: make DPT shrinkable when it has no bound vmas */
> >>
> >> ... becuase IMO the special case is quite ugly and out of place. :(
> > 
> > Yeah, not the nicest. But there's already a is_dpt check in the
> > i915_gem_object_is_framebuffer() right next door, so it's not
> > *that* out of place.
> 
> I also see who added that one! ;)
> 
> > Another option maybe could be to manually clear
> > I915_GEM_OBJECT_IS_SHRINKABLE but I don't think that is
> > supposed to be mutable, so might also have other issues.
> > So a more proper solution with that approach would perhaps
> > need some kind of gem_create_shmem_unshrinkable() function.
> > 
> >>
> >> I don't remember from the top of my head how DPT magic works but if
> >> shrinker protection needs to be tied with VMAs there is also
> >> i915_make_make(un)shrinkable to try.
> > 
> > I presume you mistyped something there.
> 
> Oops - i915_vma_make_(un)shrinkable.

That just calls the obj version of the function.

> 
> Anyway, I think it is worth giving it a try if the DPT lifetimes makes 
> it possible.
> 
> Regards,
> 
> Tvrtko

-- 
Ville Syrj�l�
Intel
