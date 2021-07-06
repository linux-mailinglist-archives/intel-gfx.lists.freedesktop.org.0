Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E5E3BC863
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 11:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB6389D7B;
	Tue,  6 Jul 2021 09:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47C789D6C
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 09:15:56 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id v5so25207911wrt.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jul 2021 02:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=P7sCJq4DV3ugOnwMZYw92lBF+HR7Q04tRqU4WzqTPIA=;
 b=ZtJpInGE3VXePl1XeRiH6VtqseoQx8VuAjDX1gtL/1QTw0KBHMCfLe1Ws+iQg2YWp5
 6XkQdeoBM22++/5vKlF37qXH+/IJ6RC/u81KSGXbJWZtVk8P7VouUrGZZmwIFHRDkn01
 tHl+kgxoWb1FtggOVD+WYqHHO9Eint66UnJ1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=P7sCJq4DV3ugOnwMZYw92lBF+HR7Q04tRqU4WzqTPIA=;
 b=uc60z9J6rlPXnriYyIjxdhyxM3Xl6tiVnGyoif+iKI8M3L+eshSi0vSOcmUJ3cQHYw
 G4079FApFsajs1hLRIJtqD/gQkodQiWJZ0kcVfxXidX+S1cGN9TKzddaf+S9sSEXl0qi
 13nrPIhx8r34Y8uoKRyTDAjyMQp4mcu1gVm7pBk5JFW0DWmRUr4m5DzDLl750vKpmvPW
 w99IcI9FDvWs9E1yofzTlgEDrAQ9aEIe+L6xOiP3rXqhXa+TKY180Je2n0yjLv5nz6qx
 OQExgj2q6pts7cei29LTUXHicMWAV/MseA7iX813EO5wrcc3cU/QrS3zP+n1K4x+N9gE
 jX/w==
X-Gm-Message-State: AOAM531jrU8YjVACeWF/2Oanf2Zu2R97Pksihg7DC/eUiw2iszDRE80a
 4wCMQd+59jBrn9K+BI60h6o57g==
X-Google-Smtp-Source: ABdhPJyvm9oRw4NYGiZhdPDfmpi9RvL2dWKLRPdaSmSRkgwF8i0H2V/sgupJOwbHJIfR35ZTdsvNPw==
X-Received: by 2002:a5d:554e:: with SMTP id g14mr20544903wrw.48.1625562955429; 
 Tue, 06 Jul 2021 02:15:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n12sm17882194wmq.5.2021.07.06.02.15.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 02:15:55 -0700 (PDT)
Date: Tue, 6 Jul 2021 11:15:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YOQfSWv0X6dFopPa@phenom.ffwll.local>
References: <20210706090559.1589544-1-matthew.auld@intel.com>
 <YOQe2fdqTzqyyV9L@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YOQe2fdqTzqyyV9L@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/2] dma-fence: export dma_fence_might_wait
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 06, 2021 at 11:14:01AM +0200, Daniel Vetter wrote:
> On Tue, Jul 06, 2021 at 10:05:58AM +0100, Matthew Auld wrote:
> > It might be useful for drivers to annotate a path where hitting the
> > actual wait path might be difficult or unlikely through normal testing.
> > =

> > Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > ---
> >  drivers/dma-buf/dma-fence.c | 19 ++++++++++++++++---
> >  include/linux/dma-fence.h   |  2 ++
> >  2 files changed, 18 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> > index ce0f5eff575d..f2cd036b5243 100644
> > --- a/drivers/dma-buf/dma-fence.c
> > +++ b/drivers/dma-buf/dma-fence.c
> > @@ -335,6 +335,21 @@ void __dma_fence_might_wait(void)
> >  }
> >  #endif
> >  =

> > +/**
> > + * dma_fence_might_wait - entering a section which might wait on DMA f=
ence
> > + * critical section.
> > + *
> > + * This is also potentially useful for drivers to call directly, when =
annotating
> > + * a path where hitting the actual wait path might be difficult or unl=
ikely
> > + * through normal testing.
> =

> Maybe also add a
> =

> "See also dma_fence_begin_signalling() and dma_fence_end_signalling."
> =

> here and a similar note the these two functions pointing at
> dma_fence_might_wait()? I do like to link things together when there's a
> group of functions.
> =

> With that: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Also ack for merging through drm-intel-gt-next, I don't think anything in
drm-misc plans to use this anytime soon. But please add the dma-buf Cc:
lines for the next round (dim add-missing-cc should cover you).
-Daniel

> =

> > + */
> > +void dma_fence_might_wait(void)
> > +{
> > +	might_sleep();
> > +	__dma_fence_might_wait();
> > +}
> > +EXPORT_SYMBOL(dma_fence_might_wait);
> > +
> >  =

> >  /**
> >   * dma_fence_signal_timestamp_locked - signal completion of a fence
> > @@ -495,9 +510,7 @@ dma_fence_wait_timeout(struct dma_fence *fence, boo=
l intr, signed long timeout)
> >  	if (WARN_ON(timeout < 0))
> >  		return -EINVAL;
> >  =

> > -	might_sleep();
> > -
> > -	__dma_fence_might_wait();
> > +	dma_fence_might_wait();
> >  =

> >  	trace_dma_fence_wait_start(fence);
> >  	if (fence->ops->wait)
> > diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> > index 6ffb4b2c6371..37bf4beed93f 100644
> > --- a/include/linux/dma-fence.h
> > +++ b/include/linux/dma-fence.h
> > @@ -370,6 +370,8 @@ static inline void dma_fence_end_signalling(bool co=
okie) {}
> >  static inline void __dma_fence_might_wait(void) {}
> >  #endif
> >  =

> > +void dma_fence_might_wait(void);
> > +
> >  int dma_fence_signal(struct dma_fence *fence);
> >  int dma_fence_signal_locked(struct dma_fence *fence);
> >  int dma_fence_signal_timestamp(struct dma_fence *fence, ktime_t timest=
amp);
> > -- =

> > 2.26.3
> > =

> =

> -- =

> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
