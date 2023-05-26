Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10217128F1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 16:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1AE10E7F9;
	Fri, 26 May 2023 14:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6507910E7F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 14:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685112760; x=1716648760;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TYHqY+6uZ4K+/S+mfbbQc3Y3deF/UlFCP2XDrRIQibQ=;
 b=VDwNVd/qIH1kLGS8PenxX2u4rZMclmyZci8gusEKGay3MNONkEQ5T67O
 5ZQlMwLU6rN6w/2vPdx9T+/mnEDTv0Pvlgna2CmoPK3OUiqD8oBDGSk4t
 T9donxGZmnUvWJIMU+Ao8Lui4q1fyi6Jqxdd4+eXd38m9ypfbaN0I7HrQ
 XAGIkJ24Jq1pgi9C6ci6uBaAE7ksNDcFqQc0EjRYJ6FdqDa6LAY4CN+At
 gjdN+s0pYkNxUm1jaJtqlUNs7i0hzKSxKU1TWaPA212kdVLKVSP//cHnp
 BSrvA9NRUo0dzPu4KtTezKDeEG4nD09l+LF+PTtfjm9KoF43PaKW49tzB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="440572346"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="440572346"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 07:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="655662574"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="655662574"
Received: from schoenfm-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.39.253])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 07:52:35 -0700
Date: Fri, 26 May 2023 16:52:32 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZHDHsPpw5TRIbLkn@ashyti-mobl2.lan>
References: <f6b876f1-4dd7-4d96-bee5-966817cc1644@kili.mountain>
 <ZHCs2RU6+SNkq0GA@ashyti-mobl2.lan>
 <6b5fd74c-b98f-4e97-a562-e9739fd03873@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6b5fd74c-b98f-4e97-a562-e9739fd03873@kili.mountain>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix an error code in
 copy()
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dan,

On Fri, May 26, 2023 at 04:14:25PM +0300, Dan Carpenter wrote:
> On Fri, May 26, 2023 at 02:58:01PM +0200, Andi Shyti wrote:
> > Hi Dan,
> > 
> > On Fri, May 26, 2023 at 02:59:31PM +0300, Dan Carpenter wrote:
> > > Return the error code if i915_gem_object_create_internal() fails,
> > > instead of returning success.
> > > 
> > > Fixes: cf586021642d ("drm/i915/gt: Pipelined page migration")
> > > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > ---
> > >  drivers/gpu/drm/i915/gt/selftest_migrate.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> > > index e677f2da093d..a26429fd5326 100644
> > > --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> > > +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> > > @@ -55,8 +55,10 @@ static int copy(struct intel_migrate *migrate,
> > >  
> > >  	sz = src->base.size;
> > >  	dst = i915_gem_object_create_internal(i915, sz);
> > > -	if (IS_ERR(dst))
> > > +	if (IS_ERR(dst)) {
> > > +		err = PTR_ERR(dst);
> > >  		goto err_free_src;
> > > +	}
> > 
> > I think it was intentional to return '0' when
> > i915_gem_object_create_internal() failed, as we are not testing
> > object creation here.
> > 
> > I don't really mind this patch, but, on the other hand, returning
> > an error value here might provide a biased information.
> 
> Something we could consider is to make it more obvious that it's
> intentional.  Smatch counts it as intentional if there is an "err = 0;"
> within a few lines of the goto.
> 
> But let's just leave it.  I've already marked this static checker
> warning as dealt with.  If I see it again and maybe that will motivate
> me to add an err = 0; assignment.  People imagine that kernel code must
> be 100% perfect with no static checker warnings etc but really it's
> almost the weekend and this is fine.

yes, I can accept an explicit "err = 0" with a comment on it. I
think it totally makes sense.

Do you want to do it or shall I take care of it?

Thanks,
Andi
