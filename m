Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08F0413AD0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 21:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DE46E5D4;
	Tue, 21 Sep 2021 19:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F3136E5D4;
 Tue, 21 Sep 2021 19:33:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223482686"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="223482686"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 12:33:10 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="703238534"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 12:33:10 -0700
Date: Tue, 21 Sep 2021 12:28:14 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch, tony.ye@intel.com, zhengguo.xu@intel.com
Message-ID: <20210921192814.GA5223@jons-linux-dev-box>
References: <20210820224446.30620-1-matthew.brost@intel.com>
 <20210820224446.30620-20-matthew.brost@intel.com>
 <008b1b3f-9aa8-fe64-a967-091f7170ded1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <008b1b3f-9aa8-fe64-a967-091f7170ded1@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 19/27] drm/i915: Fix bug in user
 proto-context creation that leaked contexts
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

On Mon, Sep 20, 2021 at 03:57:06PM -0700, John Harrison wrote:
> On 8/20/2021 15:44, Matthew Brost wrote:
> > Set number of engines before attempting to create contexts so the
> > function free_engines can clean up properly.
> > 
> > Fixes: d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle create parameters (v5)")
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > Cc: <stable@vger.kernel.org>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index dbaeb924a437..bcaaf514876b 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -944,6 +944,7 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
> >   	unsigned int n;
> >   	e = alloc_engines(num_engines);
> This can return null when out of memory. There needs to be an early exit
> check before dereferencing a null pointer. Not sure if that is a worse bug
> or not than leaking memory! Either way, it would be good to fix that too.
> 

Indeed there is another bug. Will fix that one too.

Matt

> John.
> 
> > +	e->num_engines = num_engines;
> >   	for (n = 0; n < num_engines; n++) {
> >   		struct intel_context *ce;
> >   		int ret;
> > @@ -977,7 +978,6 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
> >   			goto free_engines;
> >   		}
> >   	}
> > -	e->num_engines = num_engines;
> >   	return e;
> 
