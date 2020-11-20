Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D20E62BB177
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 18:31:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC316E8E4;
	Fri, 20 Nov 2020 17:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26FF56E8D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 17:31:53 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id s18so10124338oih.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 09:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8e4wI0bZkx7vL4ZNjNtbjWVMpWuuSKoV5XC8ZjlhW7s=;
 b=HccBEp+o8ETH4Up44ZRai+3YCDp9ZccG/73PRJf6l8P+2CSniNIKgzDRc27ybuIOvR
 IIsOfywoVBFSGx1Qv7sDxfm4sSmrQlSiigm0wYSweoIK2JSHh+CJnJrDkOciZn38yhj0
 aSga/Z7C/8a9/MwtRVQ0bNGZZBwYGOLWIM6AA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8e4wI0bZkx7vL4ZNjNtbjWVMpWuuSKoV5XC8ZjlhW7s=;
 b=KAH166bRhpE7DtfWBbcVrjAQ68om/32cbb26A4pCTnrZGV0ercpyX6NhipZufiTC7w
 v2CjC8Bco36h2CtQnKyF+7fNbS3GhhhAGjApNF5szGndzsK4uEXdGByFVkTWpIAMwX3A
 PDHmCLpZTJHdHoyt3xzAEIzcEaSBGrchceBfTqiExFBzCSx6jo9/1JngCXkc8puc2FfB
 fXUHn3cFM2DBIjlttgt/s7SzpxtfkT8McvDZn2U/HeFIG1kgyv8ofLYViuB42lhaLmpg
 CYpStONM6ysMfUZqq1KkJGKuLprsU5izefnlpV1utydiMZiH/EYOCdD74UhQf8X3d8Rg
 LfAw==
X-Gm-Message-State: AOAM531hh3JAGUHevgAORUg43wMmVxeEx1I2CKSbW4zDmAHlgUROjAeN
 92KN0WtshVmAlkylZlLW4wJAUUfdtTMPrvJ92RpUHQ==
X-Google-Smtp-Source: ABdhPJx/L8V6caZCi2etf09pugpqxuriDzOj95Aq3JU3B7KOKGDyXyFPWC3ezSK49DgmKXY+U4gQxivRIffbahFPXew=
X-Received: by 2002:aca:1713:: with SMTP id j19mr6618133oii.101.1605893512499; 
 Fri, 20 Nov 2020 09:31:52 -0800 (PST)
MIME-Version: 1.0
References: <20201120095445.1195585-1-daniel.vetter@ffwll.ch>
 <20201120095445.1195585-3-daniel.vetter@ffwll.ch>
 <bfe3b1a4-9cc0-358f-a62e-b6d9a68e735a@infradead.org>
In-Reply-To: <bfe3b1a4-9cc0-358f-a62e-b6d9a68e735a@infradead.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 20 Nov 2020 18:31:41 +0100
Message-ID: <CAKMK7uH1NAU1KLNzeYeB=Ri9S8A9UGcHSufh5iCtwUoTChvP2A@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
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
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Dave Chinner <david@fromorbit.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Christoph Lameter <cl@linux.com>, Michel Lespinasse <walken@google.com>,
 Ingo Molnar <mingo@kernel.org>, linux-xfs@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 David Rientjes <rientjes@google.com>, Waiman Long <longman@redhat.com>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>,
 LKML <linux-kernel@vger.kernel.org>, Pekka Enberg <penberg@kernel.org>,
 linux-fsdevel@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 20, 2020 at 6:20 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> Hi,
>
> On 11/20/20 1:54 AM, Daniel Vetter wrote:
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
>
>                     Mark
>
> > + * @gfp_mask: gfp_t flags that would be use to allocate
>
>                                            used
>
> > + *
> > + * Similar to might_sleep() and other annotations this can be used in functions
>
>                                          annotations,
>
> > + * that might allocate, but often dont. Compiles to nothing without
>
>                                      don't.
>
> > + * CONFIG_LOCKDEP. Includes a conditional might_sleep() if @gfp allows blocking.
>
> ?                                            might_sleep_if() if

That's one if too many, I'll do the others for next round. Thanks for
taking a look.
-Daniel

>
> > + */
> > +static inline void might_alloc(gfp_t gfp_mask)
> > +{
> > +     fs_reclaim_acquire(gfp_mask);
> > +     fs_reclaim_release(gfp_mask);
> > +
> > +     might_sleep_if(gfpflags_allow_blocking(gfp_mask));
> > +}
>
>
> --
> ~Randy
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
