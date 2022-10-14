Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 508A55FF0AE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 16:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3907810E6C0;
	Fri, 14 Oct 2022 14:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9CFE10E6C0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 14:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665759215; x=1697295215;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=om7Otz4UOorZHeBOtHXvbxRiHGCdwg8NZMkpJ70PsEo=;
 b=TYxxSftxG562JOJOE+vEK+ZtHcHs+DBpNhOSNGdeI1xYY5BNbfUB66Fp
 RrzKtY2MU6WcXQW+AbjqvCGtiUQgK1fk64Xzyrt61MEb8SHA11U23vfiE
 /wzS3UGA5h4wrsvtB8ozdh8WDx26KO4j3dqLBvVeLLipeGNMcOJ1otWPQ
 0QTUrG7B9KbLZY4yGaMAlJRI45aGq8ACnLLA+bl0q2hJ+Jt7bUnLf8tBI
 zhqe474nZCpvnRNsAQjIebQ6CuYO85OxQT8gmcnbxyZrm8jtNIO5o6Xy0
 onU1IyyfkD7RGrPFfYNUY/+Bd8WsTHfi2A2zvUrr7GWUBN9bdH4oRq5Gi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="288680067"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="288680067"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 07:49:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696327207"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="696327207"
Received: from mfalkows-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.213.15.15])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 07:49:26 -0700
Date: Fri, 14 Oct 2022 16:49:24 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y0l29OyVYdwJdIpz@ashyti-mobl2.lan>
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
 <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
 <Y0kkIzaDeMxpuawT@ashyti-mobl2.lan>
 <d6b14cec-ef71-15ff-161b-de9c5e9e4d1c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6b14cec-ef71-15ff-161b-de9c5e9e4d1c@intel.com>
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

Hi Matt,

On Fri, Oct 14, 2022 at 10:44:11AM +0100, Matthew Auld wrote:
> On 14/10/2022 09:56, Andi Shyti wrote:
> > On Fri, Oct 14, 2022 at 09:39:52AM +0100, Matthew Auld wrote:
> > > On 13/10/2022 18:56, Jonathan Cavitt wrote:
> > > > i915_ttm_to_gem can return a NULL pointer, which is
> > > > dereferenced in i915_ttm_access_memory without first
> > > > checking if it is NULL.  Inspecting
> > > > i915_ttm_io_mem_reserve, it appears the correct
> > > > behavior in this case is to return -EINVAL.
> > > 
> > > The GEM object has already been dereferenced before this point, if you look
> > > at the caller (vm_access_ttm). The NULL obj thing is to identify "ttm ghost
> > > objects", and I don't think a normal userpace object can suddenly become one
> > > (access_memory comes from ptrace). AFAIK ghost objects are just for
> > > temporarily hanging on to some memory/state, while the dma-resv is busy. In
> > > the places where ttm is the one giving us the object, then it might be
> > > possible to see these types of objects, since ttm could in theory pass one
> > > in (like during eviction).
> > 
> > True that, but because from a code persepctive we can still receive
> > NULL, I think the check is correct, perhaps we could:
> > 
> > 	if (unlikely(!obj))
> > 		return -EINVAL;
> 
> Hmm, so that will dereference some pointer, and then later check if it is
> NULL here? Or do you mean to move this into vm_access()? If we are given a
> "ghost object" for ptrace this would likely mean we have a very nasty bug
> somewhere (unless I'm misunderstanding something), and so returning a normal
> user error here doesn't seem right to me (maybe this just hides the issue)?
> Letting it crash seems fine to me tbh. It also makes the code harder to
> understand IMO, because looking at this it now suggests that it is somehow
> possible to have a "ghost object" here. Also there are a fair few places
> calling i915_ttm_to_gem() which already don't check for NULL, since it
> should be impossible, like it should be here.

By just analyzing the code, getting NULL is not impossible. In
that case even a GEM_BUG_ON would have worked. But the NULL
pointer, as it is, needs to be checked.

Anyway, I see that an agreement has been reached with Nirmoy, so
that it doesn't matter anymore :)

Andi
