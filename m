Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 126ED2C29B8
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 15:34:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84766E442;
	Tue, 24 Nov 2020 14:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA78C6E45C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 14:34:15 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id g14so7345701wrm.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 06:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=YQpCas1RNfDZEcGYI04yEm6odPOACipDcEuTBaoIULk=;
 b=UhV7hB9LJySyibtoHRqaxMir8P7FnhXAU96E4aHd3ofIMEZCRtLh+zeMX/RZH2wp/d
 ASfb7zsWToxZhdhECdglvYGnSj/gHkK+a128+ByWw8EqQuvRvEHVa/6FGH0Q/PMdeY8p
 cOVbuuXQq/r/33GWKbTOqEjjjzE0whLpLoOC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=YQpCas1RNfDZEcGYI04yEm6odPOACipDcEuTBaoIULk=;
 b=mYNw92TKI+SiMTCmsK0WIGT8xG7tkK1Fjv+FZW8SodD+qBRgRjKWRrohyg1CR2vl9l
 bejRdkfIn7bqikvWLpMTJjZ4V4+S56XnEXxioLw66N9Oime0gr0+GLw4M12qWtM73Ob1
 3ZX38cRadOvJYCWAg94benyFmNzDcxdyvJL+PBg+N09qgKiMC02atKI87JJ/0DP8UtkZ
 zvXgpV1nTcsfGGHtva313pcYHl2Yf6Cjs44zLGKiY14yIyQselrtr+XjzeW7OGc9n6pR
 koVlcIz5Do/HHF4yrUvdT3JOakVmE3/CN7fgGdg2frQ2xvLBx8PDTCjoaYr4HV4Jywp9
 a11Q==
X-Gm-Message-State: AOAM532rNmLKiSpiTseFMCyXmK3q+C3pXsqGaNAHoQZwcwWuPZmwaQQp
 n/YK2N0Zwn/Li8fgPfUeiL6RGA==
X-Google-Smtp-Source: ABdhPJz6iTrOgvt95IAsr45xzCdl3M2C2ca0X4EFZPlX+gugzV3LnRN6/oGeySsazf01z6hbldI7qw==
X-Received: by 2002:a5d:50d1:: with SMTP id f17mr5715898wrt.264.1606228454425; 
 Tue, 24 Nov 2020 06:34:14 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m18sm27135410wru.37.2020.11.24.06.34.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Nov 2020 06:34:13 -0800 (PST)
Date: Tue, 24 Nov 2020 15:34:11 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20201124143411.GN401619@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mm@kvack.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
 David Rientjes <rientjes@google.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Michel Lespinasse <walken@google.com>,
 Waiman Long <longman@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>,
 Dave Chinner <david@fromorbit.com>, Qian Cai <cai@lca.pw>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20201120095445.1195585-1-daniel.vetter@ffwll.ch>
 <20201120095445.1195585-3-daniel.vetter@ffwll.ch>
 <20201120180719.GO244516@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201120180719.GO244516@ziepe.ca>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/3] mm: Extract might_alloc() debug check
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Dave Chinner <david@fromorbit.com>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-mm@kvack.org,
 Daniel Vetter <daniel.vetter@intel.com>, Christoph Lameter <cl@linux.com>,
 Michel Lespinasse <walken@google.com>, Ingo Molnar <mingo@kernel.org>,
 linux-xfs@vger.kernel.org, "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 David Rientjes <rientjes@google.com>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Thomas Gleixner <tglx@linutronix.de>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Randy Dunlap <rdunlap@infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Pekka Enberg <penberg@kernel.org>,
 linux-fsdevel@vger.kernel.org, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 20, 2020 at 02:07:19PM -0400, Jason Gunthorpe wrote:
> On Fri, Nov 20, 2020 at 10:54:43AM +0100, Daniel Vetter wrote:
> > diff --git a/include/linux/sched/mm.h b/include/linux/sched/mm.h
> > index d5ece7a9a403..f94405d43fd1 100644
> > --- a/include/linux/sched/mm.h
> > +++ b/include/linux/sched/mm.h
> > @@ -180,6 +180,22 @@ static inline void fs_reclaim_acquire(gfp_t gfp_mask) { }
> >  static inline void fs_reclaim_release(gfp_t gfp_mask) { }
> >  #endif
> >  
> > +/**
> > + * might_alloc - Marks possible allocation sites
> > + * @gfp_mask: gfp_t flags that would be use to allocate
> > + *
> > + * Similar to might_sleep() and other annotations this can be used in functions
> > + * that might allocate, but often dont. Compiles to nothing without
> > + * CONFIG_LOCKDEP. Includes a conditional might_sleep() if @gfp allows blocking.
> > + */
> > +static inline void might_alloc(gfp_t gfp_mask)
> > +{
> > +	fs_reclaim_acquire(gfp_mask);
> > +	fs_reclaim_release(gfp_mask);
> > +
> > +	might_sleep_if(gfpflags_allow_blocking(gfp_mask));
> > +}
> 
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> 
> Oh, I just had a another thread with Matt about xarray, this would be
> perfect to add before xas_nomem():

Yeah I think there's plenty of places where this will be useful. Want to
slap a sob onto this diff so I can include it for the next round, or will
you or Matt send this out when my might_alloc has landed?
-Daniel

> 
> diff --git a/lib/idr.c b/lib/idr.c
> index f4ab4f4aa3c7f5..722d9ddff53221 100644
> --- a/lib/idr.c
> +++ b/lib/idr.c
> @@ -391,6 +391,8 @@ int ida_alloc_range(struct ida *ida, unsigned int min, unsigned int max,
>  	if ((int)max < 0)
>  		max = INT_MAX;
>  
> +	might_alloc(gfp);
> +
>  retry:
>  	xas_lock_irqsave(&xas, flags);
>  next:
> diff --git a/lib/xarray.c b/lib/xarray.c
> index 5fa51614802ada..dd260ee7dcae9a 100644
> --- a/lib/xarray.c
> +++ b/lib/xarray.c
> @@ -1534,6 +1534,8 @@ void *__xa_store(struct xarray *xa, unsigned long index, void *entry, gfp_t gfp)
>  	XA_STATE(xas, xa, index);
>  	void *curr;
>  
> +	might_alloc(gfp);
> +
>  	if (WARN_ON_ONCE(xa_is_advanced(entry)))
>  		return XA_ERROR(-EINVAL);
>  	if (xa_track_free(xa) && !entry)
> @@ -1600,6 +1602,8 @@ void *__xa_cmpxchg(struct xarray *xa, unsigned long index,
>  	XA_STATE(xas, xa, index);
>  	void *curr;
>  
> +	might_alloc(gfp);
> +
>  	if (WARN_ON_ONCE(xa_is_advanced(entry)))
>  		return XA_ERROR(-EINVAL);
>  
> @@ -1637,6 +1641,8 @@ int __xa_insert(struct xarray *xa, unsigned long index, void *entry, gfp_t gfp)
>  	XA_STATE(xas, xa, index);
>  	void *curr;
>  
> +	might_alloc(gfp);
> +
>  	if (WARN_ON_ONCE(xa_is_advanced(entry)))
>  		return -EINVAL;
>  	if (!entry)
> @@ -1806,6 +1812,8 @@ int __xa_alloc(struct xarray *xa, u32 *id, void *entry,
>  {
>  	XA_STATE(xas, xa, 0);
>  
> +	might_alloc(gfp);
> +
>  	if (WARN_ON_ONCE(xa_is_advanced(entry)))
>  		return -EINVAL;
>  	if (WARN_ON_ONCE(!xa_track_free(xa)))

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
