Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F337468104
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Dec 2021 01:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6D76E332;
	Sat,  4 Dec 2021 00:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358D66E332
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Dec 2021 00:03:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="223949820"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="223949820"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 16:03:45 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="678284962"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 16:03:44 -0800
Date: Fri, 3 Dec 2021 15:58:17 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Bruce Chang <yu.bruce.chang@intel.com>
Message-ID: <20211203235817.GC3393@jons-linux-dev-box>
References: <20211203233057.2854-1-yu.bruce.chang@intel.com>
 <20211203235356.GA3393@jons-linux-dev-box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211203235356.GA3393@jons-linux-dev-box>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Follow up on increase
 timeout in i915_gem_contexts selftests
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

On Fri, Dec 03, 2021 at 03:53:56PM -0800, Matthew Brost wrote:
> On Fri, Dec 03, 2021 at 03:30:57PM -0800, Bruce Chang wrote:
> > Follow up on patch https://patchwork.freedesktop.org/patch/446832/
> > 
> > Different platforms will take a bit longer while GuC is enabled, so
> > increase the timeout and also add some margin in i915_gem_context
> > selftest.
> > 
> > Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> > Cc: Matthew Brost <matthew.brost@intel.com>
> > Cc: John Harrison <John.C.Harrison@Intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> > index b32f7fed2d9c..ae33e8c705da 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> > @@ -88,7 +88,7 @@ static int live_nop_switch(void *arg)
> >  			rq = i915_request_get(this);
> >  			i915_request_add(this);
> >  		}
> > -		if (i915_request_wait(rq, 0, HZ) < 0) {
> > +		if (i915_request_wait(rq, 0, 10*HZ) < 0) {
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com
> 
> s/10*HZ/10 * HZ/
> 
> With that and an agreed upon audit of selftests / IGTs:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> 

^^^ Copy paste malfunction....

> >  			pr_err("Failed to populated %d contexts\n", nctx);
> >  			intel_gt_set_wedged(&i915->gt);
> >  			i915_request_put(rq);
> > -- 
> > 2.21.3
> > 
