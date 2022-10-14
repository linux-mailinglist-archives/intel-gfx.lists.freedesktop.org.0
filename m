Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515AE5FEB37
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 10:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F8410E047;
	Fri, 14 Oct 2022 08:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C7B10E047
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 08:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665737779; x=1697273779;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=N41jveauo9S/DzdS4kDv/kA+cHuNoJ2/t4+vhST9+Ks=;
 b=M4HQlSvtawgQMq3pwI3vJmFP134MhDTtMaJohjWEUWYeHwKjKRlA9Vvw
 IDBq1P3Nz/cIBJbFHHRhYM/893r1YtsWr2uLt3dJrCQgExounsW97ILN/
 x5+h4uuEgJBcybJQu0wlxav7v5kCgQ8AfdMqSipVhc5Hu55ph7sFurlk8
 /QJcMTAsoVOgfWfeTqX4oNvXYZYBwRtJ2d8UkpZtqpjriVFiOYTH3+9yR
 XgjjQtsuCT/zIHJKWaSIgQHvG4pU2854ZbqVjgDWesnfXrlj/TdSyg6cO
 AUL3GGn+u1d/Ty+/RNAthQsvY8RdaQwysu3bFEkC6y7+gmN0K4sq9p0LS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="367346890"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="367346890"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 01:56:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="956512443"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="956512443"
Received: from mknizews-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.213.26.40])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 01:56:07 -0700
Date: Fri, 14 Oct 2022 10:56:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y0kkIzaDeMxpuawT@ashyti-mobl2.lan>
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
 <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix access_memory null
 pointer exception
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, andrzej.hajda@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 14, 2022 at 09:39:52AM +0100, Matthew Auld wrote:
> On 13/10/2022 18:56, Jonathan Cavitt wrote:
> > i915_ttm_to_gem can return a NULL pointer, which is
> > dereferenced in i915_ttm_access_memory without first
> > checking if it is NULL.  Inspecting
> > i915_ttm_io_mem_reserve, it appears the correct
> > behavior in this case is to return -EINVAL.
> 
> The GEM object has already been dereferenced before this point, if you look
> at the caller (vm_access_ttm). The NULL obj thing is to identify "ttm ghost
> objects", and I don't think a normal userpace object can suddenly become one
> (access_memory comes from ptrace). AFAIK ghost objects are just for
> temporarily hanging on to some memory/state, while the dma-resv is busy. In
> the places where ttm is the one giving us the object, then it might be
> possible to see these types of objects, since ttm could in theory pass one
> in (like during eviction).

True that, but because from a code persepctive we can still receive
NULL, I think the check is correct, perhaps we could:

	if (unlikely(!obj))
		return -EINVAL;

Andi

> > Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Suggested-by: John C Harrison <John.C.Harrison@intel.com>
> > CC: Matthew Auld <matthew.auld@intel.com>
> > CC: Andrzej Hajda <andrzej.hajda@intel.com>
> > CC: Nirmoy Das <nirmoy.das@intel.com>
> > CC: Andi Shyti <andi.shyti@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
> >   1 file changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > index d63f30efd631..b569624f2ed9 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > @@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
> >   				  int len, int write)
> >   {
> >   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> > -	resource_size_t iomap = obj->mm.region->iomap.base -
> > -		obj->mm.region->region.start;
> > +	resource_size_t iomap;
> >   	unsigned long page = offset >> PAGE_SHIFT;
> >   	unsigned long bytes_left = len;
> > +	if (!obj)
> > +		return -EINVAL;
> > +
> > +	iomap = obj->mm.region->iomap.base -
> > +		obj->mm.region->region.start;
> > +
> >   	/*
> >   	 * TODO: For now just let it fail if the resource is non-mappable,
> >   	 * otherwise we need to perform the memcpy from the gpu here, without
