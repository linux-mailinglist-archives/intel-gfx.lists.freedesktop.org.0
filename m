Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9C511B811
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 17:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5B6B6E110;
	Wed, 11 Dec 2019 16:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C04F46E110
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 16:12:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 08:12:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="414905804"
Received: from linux.fm.intel.com (HELO intel.com) ([10.1.27.42])
 by fmsmga006.fm.intel.com with ESMTP; 11 Dec 2019 08:12:15 -0800
Date: Wed, 11 Dec 2019 08:12:15 -0800
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191211161215.GD47225@intel.com>
References: <20191211150204.133471-1-chris@chris-wilson.co.uk>
 <20191211155908.GC47225@intel.com>
 <157608042677.27099.2108685443689165611@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157608042677.27099.2108685443689165611@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use the i915_device name for
 identifying our request fences
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19/12/11 04:07, Chris Wilson wrote:
> Quoting Venkata Sandeep Dhanalakota (2019-12-11 15:59:09)
> > On 19/12/11 03:02, Chris Wilson wrote:
> > > Use the dev_name(i915) to identify the requests for debugging, so we can
> > > tell different device timelines apart.
> > > 
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_request.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > > index a6238c626a16..9646e02edea3 100644
> > > --- a/drivers/gpu/drm/i915/i915_request.c
> > > +++ b/drivers/gpu/drm/i915/i915_request.c
> > > @@ -57,7 +57,7 @@ static struct i915_global_request {
> > >  
> > >  static const char *i915_fence_get_driver_name(struct dma_fence *fence)
> > >  {
> > > -     return "i915";
> > > +     return dev_name(to_request(fence)->i915->drm.dev);
> > >  }
> > >  
> > Sure, should we also update i915_fence_get_timeline_name() 
> > return to_request(fence)->gem_context->name ?:
> > i915_fence_get_driver_name(fence);
> 
> No need really. It's either a user context or a kernel context, the less
> said to userspace about internals the better. It will be presented as
> 
> 00:00:02.00 i915::[i915] (or something like that)
> 
> If you would rather that "[i915]" be "[k]" or probably better yet "["
> DRIVER_NAME "]"
got it, having "[i915]" makes sense.

Reviewed-by: Venkata Sandeep Dhanalakota
<venkata.s.dhanalakota@intel.com>
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
