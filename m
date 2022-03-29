Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0404EA9A3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 10:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0117410E7E7;
	Tue, 29 Mar 2022 08:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D999A10E7B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 08:49:41 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id j18so23709902wrd.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 01:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=3WOsP0N8pQYSZR7dCr/GEolSLsBOcDjGOSuUf4Q8y5c=;
 b=Cr8k1GfBxjxgkiKcehLqVxYA6mL2h4XI3jCGech6aDvqrYzO39ohK4BWHM7caw8U+T
 vYUExF3iJ6E0zzY1UXPqlQQu0ZEda+9cCZVbaE1pv1kCOJ7Fqmw3GXMhujiTrYvzPJ/t
 DGAmNOSeVp8M3HYk+vTLA/ofD2NBtrKdEuzP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3WOsP0N8pQYSZR7dCr/GEolSLsBOcDjGOSuUf4Q8y5c=;
 b=mgWgifz0gVtzJ6e5nw52xjyilW7Ft+FeRXD9HqiiIo7/GtPSPabzuoyvs077euPsAZ
 E5ceXX/mmCvQ6BWTBI7TVWy46oqbCEgM6HnzPR7XqY+0BXEkpKwARiFk8LG5DxSpM6JS
 ubVAXKeuRmxy7cM8DsVapqln1Uu1dgccOoaaMaAl7B8dnii05p//Bex2WGXLxABkv3m6
 jAHeU83Q6JAQ8lCWs1Ehb2dZ6GUupBaPaZEDkaC/gniNk8tf76WYlPc8JyNKEBy34WGP
 Qrsb8Lgl4+Ak9AKz5Am9AID4zH1wZOyC+wrP5HKml9NMec2ofkR45LT9D2+tXq6AO6Zf
 5UeQ==
X-Gm-Message-State: AOAM532CPqfCOUp/kN1Q15wav0qPS8LayiFKsrFCqJAoE2oJEuYFJQOY
 Earjm5ztbmwkcPLfaglTGlhYhg==
X-Google-Smtp-Source: ABdhPJxsBo7mH6qQdvfu4gCQhAS59ss1wdC1AX1XGHJLm8qth9AwFe6z+gofLqam6doW5OJmi4ZNmA==
X-Received: by 2002:a5d:64e7:0:b0:205:8cc7:aa82 with SMTP id
 g7-20020a5d64e7000000b002058cc7aa82mr29697748wri.247.1648543780450; 
 Tue, 29 Mar 2022 01:49:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 w7-20020a1cf607000000b00389a5390180sm1613852wmc.25.2022.03.29.01.49.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 01:49:40 -0700 (PDT)
Date: Tue, 29 Mar 2022 10:49:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YkLIIhzuiE9jN8xK@phenom.ffwll.local>
References: <20220329070001.134180-1-christian.koenig@amd.com>
 <20220329070001.134180-2-christian.koenig@amd.com>
 <YkLHypwNnLd+qA4H@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YkLHypwNnLd+qA4H@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] dma-buf: handle empty dma_fence_arrays
 gracefully
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 29, 2022 at 10:48:10AM +0200, Daniel Vetter wrote:
> On Tue, Mar 29, 2022 at 09:00:01AM +0200, Christian König wrote:
> > A bug inside the new sync-file merge code created empty dma_fence_array instances.
> > 
> > Warn about that and handle those without crashing.
> > 
> > Signed-off-by: Christian König <christian.koenig@amd.com>
> 
> > ---
> >  drivers/dma-buf/dma-fence-array.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fence-array.c
> > index 52b85d292383..5c8a7084577b 100644
> > --- a/drivers/dma-buf/dma-fence-array.c
> > +++ b/drivers/dma-buf/dma-fence-array.c
> > @@ -159,6 +159,8 @@ struct dma_fence_array *dma_fence_array_create(int num_fences,
> >  	struct dma_fence_array *array;
> >  	size_t size = sizeof(*array);
> >  
> > +	WARN_ON(!num_fences || !fences);
> 
> WARN_ON and then dying randomly is kinda not nice, I'd wrap this in an
> 
> if (WARN_ON)
> 	return NULL;
> 
> with that: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Uh strike that, you handle it gracefully with the check below.

> 
> > +
> >  	/* Allocate the callback structures behind the array. */
> >  	size += num_fences * sizeof(struct dma_fence_array_cb);
> >  	array = kzalloc(size, GFP_KERNEL);
> > @@ -231,6 +233,9 @@ struct dma_fence *dma_fence_array_first(struct dma_fence *head)
> >  	if (!array)
> >  		return head;
> >  

Maybe add a comment here that this is just defensive programming, like

	/* No fences isn't allowed and splats in create, but be defensive */

Either way Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch> I guess,
coffee not quite yet working.
-Daniel

> > +	if (!array->num_fences)
> > +		return NULL;
> > +
> >  	return array->fences[0];
> >  }
> >  EXPORT_SYMBOL(dma_fence_array_first);
> > -- 
> > 2.25.1
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
