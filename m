Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D81221EB7D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 10:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9257C6E167;
	Tue, 14 Jul 2020 08:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D18E6E167
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 08:34:48 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id b6so20275715wrs.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 01:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K91c8fFe6EieBtvrxtfxonx0x9RxTurKJuaMG5F3Ud4=;
 b=aUcIAb5ITcZhu35Ohf4qglLh9VjvwtnirWnGQ4Gj6lMz9VbLnI7QSQIw8cqx5llHzI
 HTJc4ygD+WXxtLFFL7WqB6U3xMx5zphIW4ArUlz2/WeB6he4crgN1BqMqgV+kCwrPRvG
 Mn1eu6XQYG3zIlswsyltjacS2V3Ooh0R2hSZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K91c8fFe6EieBtvrxtfxonx0x9RxTurKJuaMG5F3Ud4=;
 b=pZ2ObQrtwjeWwkeFAXGHn5MHTC8QOFjfJwmoTok3kKcm53o+zAUxf7/v3tZlU3FzAf
 elsFlWwFaXX8xbZs9PhQFz38P2p2VdR/3lpr7/V9SihX6PqeHaNM5pSKalaKvSJ5coUO
 w+meqZIfJpmxaR6T5/VJBKd1vUBvhkdVrY2ARbhmafitqqR5lLa2Thap31GFCtpL6gN+
 4oAeaRJC5tbTQUKvinlXt2irXmNbXd7Gzzz+B8MKeCpUvZTNKxWpDerwusb3MqhxEjEX
 4ZQqMEZ0dKOjPDK4BCZEAG6JIwb7gMevOjjJ1ql/nP8JrTlOss1LvHAIOUQRsJKENKbk
 7LJQ==
X-Gm-Message-State: AOAM531bGTckP8lSofbLqHDnuQtKuwynJFfDC7fnanZA1KFRpTyVC16k
 Q20H0v6mBTBaFp+r1FxBj9DxFg==
X-Google-Smtp-Source: ABdhPJwCnGtXhumdxB3E/91dbQgl0bntY1R8MxmECWxuvNsNQ5eGRIeroGGz+Gd4oiNmz7XNlmjktw==
X-Received: by 2002:adf:ff90:: with SMTP id j16mr3814345wrr.364.1594715687205; 
 Tue, 14 Jul 2020 01:34:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w14sm27844836wrt.55.2020.07.14.01.34.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 01:34:46 -0700 (PDT)
Date: Tue, 14 Jul 2020 10:34:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
Message-ID: <20200714083444.GU3278063@phenom.ffwll.local>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-8-daniel.vetter@ffwll.ch>
 <20200708051739.GB1121718@jamwan02-TSP300>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708051739.GB1121718@jamwan02-TSP300>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 07/25] drm/komdea: Annotate dma-fence
 critical section in commit path
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
Cc: nd@arm.com, linux-rdma@vger.kernel.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 08, 2020 at 01:17:39PM +0800, james qian wang (Arm Technology China) wrote:
> On Tue, Jul 07, 2020 at 10:12:11PM +0200, Daniel Vetter wrote:
> > Like the helpers, nothing special. Well except not, because we the
> > critical section extends until after hw_done(), since that's the last
> > thing which could hold up a subsequent atomic commit. That means the
> > wait_for_flip_done is included, but that's not a problem, we're
> > allowed to call dma_fence_wait() from signalling critical sections.
> > Even on our own fence (which this does), it's just a bit confusing.
> > But in a way those last 2 function calls are already part of the fence
> > signalling critical section for the next atomic commit.
> > 
> > Reading this I'm wondering why komeda waits for flip_done() before
> > calling hw_done(), which is a bit backwards (but hey hw can be
> > special). Might be good to throw a comment in there that explains why,
> > because the original commit that added this just doesn't.
> 
> Hi Daniel:
> 
> It's a typo, thank you for pointing this out, and I'll give a fix after
> this series have been merged.
> 
> for this patch
> 
> Reviewed-by: James Qian Wang <james.qian.wang@arm.com>

Hi James,

Thanks for revieweing. Note that the "wrong" order doesn't have to be a
real problem, there's other drivers which need this one too. But they
explain why in a comment. So if you change that, make sure you test it all
well to avoid surprises.

Testing (with lockdep enabled) would be really good here, can you try to
do that too?

Also, next patch is for drm/malidp, can you pls review that patch too?

Thanks, Daniel

> 
> > Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Mihail Atanassov <mihail.atanassov@arm.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/arm/display/komeda/komeda_kms.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
> > index 1f6682032ca4..cc5b5915bc5e 100644
> > --- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
> > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
> > @@ -73,6 +73,7 @@ static struct drm_driver komeda_kms_driver = {
> >  static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
> >  {
> >  	struct drm_device *dev = old_state->dev;
> > +	bool fence_cookie = dma_fence_begin_signalling();
> >  
> >  	drm_atomic_helper_commit_modeset_disables(dev, old_state);
> >  
> > @@ -85,6 +86,8 @@ static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
> >  
> >  	drm_atomic_helper_commit_hw_done(old_state);
> >  
> > +	dma_fence_end_signalling(fence_cookie);
> > +
> >  	drm_atomic_helper_cleanup_planes(dev, old_state);
> >  }
> >  
> > -- 
> > 2.27.0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
