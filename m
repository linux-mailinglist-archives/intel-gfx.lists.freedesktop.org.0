Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 855214614F9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 13:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A796C6F87F;
	Mon, 29 Nov 2021 12:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19BBE6F879;
 Mon, 29 Nov 2021 12:23:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10182"; a="236186429"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="236186429"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 04:23:45 -0800
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="499312228"
Received: from vanderss-mobl.ger.corp.intel.com (HELO [10.249.254.176])
 ([10.249.254.176])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 04:23:43 -0800
Message-ID: <58ca11648ab29d96b84640760d2acc3ac2d39d19.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Joonas
 Lahtinen <joonas.lahtinen@intel.com>
Date: Mon, 29 Nov 2021 13:23:41 +0100
In-Reply-To: <4fd0eee6-342f-fb31-717c-901440f38c35@gmail.com>
References: <20211129073533.414008-1-thomas.hellstrom@linux.intel.com>
 <4fd0eee6-342f-fb31-717c-901440f38c35@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] dma_fence_array: Fix PENDING_ERROR leak in
 dma_fence_array_signaled()
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
Cc: linaro-mm-sig@lists.linaro.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Christian,

On Mon, 2021-11-29 at 09:21 +0100, Christian König wrote:
> Am 29.11.21 um 08:35 schrieb Thomas Hellström:
> > If a dma_fence_array is reported signaled by a call to
> > dma_fence_is_signaled(), it may leak the PENDING_ERROR status.
> > 
> > Fix this by clearing the PENDING_ERROR status if we return true in
> > dma_fence_array_signaled().
> > 
> > Fixes: 1f70b8b812f3 ("dma-fence: Propagate errors to dma-fence-
> > array container")
> > Cc: linaro-mm-sig@lists.linaro.org
> > Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> 
> Reviewed-by: Christian König <christian.koenig@amd.com>

How are the dma-buf / dma-fence patches typically merged? If i915 is
the only fence->error user, could we take this through drm-intel to
avoid a backmerge for upcoming i915 work?

/Thomas


> 
> > ---
> >   drivers/dma-buf/dma-fence-array.c | 6 +++++-
> >   1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-
> > buf/dma-fence-array.c
> > index d3fbd950be94..3e07f961e2f3 100644
> > --- a/drivers/dma-buf/dma-fence-array.c
> > +++ b/drivers/dma-buf/dma-fence-array.c
> > @@ -104,7 +104,11 @@ static bool dma_fence_array_signaled(struct
> > dma_fence *fence)
> >   {
> >         struct dma_fence_array *array = to_dma_fence_array(fence);
> >   
> > -       return atomic_read(&array->num_pending) <= 0;
> > +       if (atomic_read(&array->num_pending) > 0)
> > +               return false;
> > +
> > +       dma_fence_array_clear_pending_error(array);
> > +       return true;
> >   }
> >   
> >   static void dma_fence_array_release(struct dma_fence *fence)
> 


