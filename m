Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E5D3D9DEF
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 09:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CB46EC93;
	Thu, 29 Jul 2021 07:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C93B6EC8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 07:00:39 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id c16so5494951wrp.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 00:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=D42htALMiwE4ICut41D5vsBQfBCeDEae3tqYpmKv8jk=;
 b=OBAlPYmFEMjLIsQidQskf+lnTNHx3ViYTxgqKf4O8loi2k8YlK8JK+7lqEWNj9D4Zs
 O3x76HK/w4TARBfEoxJg2AmDqouGm0u8e8Ku8kv5Hvn3ObYAuDRJ9gr69zqlVTFsA8V8
 BMRfvga/i5W6OVagzBgzYq+FLZYXeor9ILVh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=D42htALMiwE4ICut41D5vsBQfBCeDEae3tqYpmKv8jk=;
 b=IUZDyOVCBQV20ORQxNf+YB/IyTLXbm4ayO5UOF90hbxxWC9Q0hA+m2pmBuF21U2zfC
 K9QbWfcDn1YbaXTUbmELUHD29yAatrZQkHSb6fD6H1pBwHwDJBL7vWiUG1XUKqWLsXCR
 aoM5Uwm9miCa2dAzbOW2JE9X9S9Xg13qCyIJaWRZKMCqP/tl6QM6B0Cg4QNZrNUdHnFb
 jyw+Fj0yQGSFo6/K7lN8+vDOoovZ8ECTuKbEgvmzt5CtyfcghSo2FsA5sWOMNQOlAKfP
 SFBmRMCsmKzp2AB23UKowfB7X15gK7GePruHCTD6D+uDa9zqamueZjX+lxI+K+a1B3GO
 Ms3g==
X-Gm-Message-State: AOAM530eUzAYOItUyfaPYvUa9FESmF6ikHZ5ZvA7TWqYJayxqmUHBq9A
 dipEIW7dBmsWQgHSTN/lnZpkbA==
X-Google-Smtp-Source: ABdhPJwsaDiG7vN34aTOe+72G4Pb7gWtL4ldUYgv5ToL6oF5GwhKKiRbM5Gn5XQbuB0yAdNhhwKvlg==
X-Received: by 2002:adf:ef4b:: with SMTP id c11mr3047231wrp.35.1627542037754; 
 Thu, 29 Jul 2021 00:00:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g138sm2707357wmg.32.2021.07.29.00.00.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 00:00:37 -0700 (PDT)
Date: Thu, 29 Jul 2021 09:00:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <YQJSE3TMRydDNhqT@phenom.ffwll.local>
Mail-Followup-To: Peter Zijlstra <peterz@infradead.org>,
 Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-graphics-maintainer@vmware.com, zackr@vmware.com,
 airlied@linux.ie, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20210722092929.244629-1-desmondcheongzx@gmail.com>
 <20210722092929.244629-2-desmondcheongzx@gmail.com>
 <YPlKkvelm/mcnCj0@phenom.ffwll.local>
 <YQAaIrNUXa6i2gxD@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YQAaIrNUXa6i2gxD@hirez.programming.kicks-ass.net>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: use the lookup lock in
 drm_is_current_master
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
Cc: airlied@linux.ie, gregkh@linuxfoundation.org,
 Boqun Feng <boqun.feng@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 mripard@kernel.org, linux-graphics-maintainer@vmware.com,
 dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
 skhan@linuxfoundation.org, Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, zackr@vmware.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 27, 2021 at 04:37:22PM +0200, Peter Zijlstra wrote:
> On Thu, Jul 22, 2021 at 12:38:10PM +0200, Daniel Vetter wrote:
> > On Thu, Jul 22, 2021 at 05:29:27PM +0800, Desmond Cheong Zhi Xi wrote:
> > > Inside drm_is_current_master, using the outer drm_device.master_mutex
> > > to protect reads of drm_file.master makes the function prone to creating
> > > lock hierarchy inversions. Instead, we can use the
> > > drm_file.master_lookup_lock that sits at the bottom of the lock
> > > hierarchy.
> > > 
> > > Reported-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> > > ---
> > >  drivers/gpu/drm/drm_auth.c | 9 +++++----
> > >  1 file changed, 5 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> > > index f00354bec3fb..9c24b8cc8e36 100644
> > > --- a/drivers/gpu/drm/drm_auth.c
> > > +++ b/drivers/gpu/drm/drm_auth.c
> > > @@ -63,8 +63,9 @@
> > >  
> > >  static bool drm_is_current_master_locked(struct drm_file *fpriv)
> > >  {
> > > -	lockdep_assert_held_once(&fpriv->minor->dev->master_mutex);
> > > -
> > > +	/* Either drm_device.master_mutex or drm_file.master_lookup_lock
> > > +	 * should be held here.
> > > +	 */
> > 
> > Disappointing that lockdep can't check or conditions for us, a
> > lockdep_assert_held_either would be really neat in some cases.
> > 
> > Adding lockdep folks, maybe they have ideas.
> 
> #ifdef CONFIG_LOCKDEP
> 	WARN_ON_ONCE(debug_locks && !(lockdep_is_held(&drm_device.master_mutex) ||
> 				      lockdep_is_held(&drm_file.master_lookup_lock)));
> #endif
> 
> doesn't exactly roll off the tongue, but should do as you want I
> suppose.
> 
> Would something like:
> 
> #define lockdep_assert(cond)	WARN_ON_ONCE(debug_locks && !(cond))
> 
> Such that we can write:
> 
> 	lockdep_assert(lockdep_is_held(&drm_device.master_mutex) ||
> 		       lockdep_is_held(&drm_file.master_lookup_lock));
> 
> make it better ?

Yeah I think that's pretty tidy and flexible.

Desmond, can you pls give this a shot with Peter's patch below?
-Daniel
> 
> ---
> Subject: locking/lockdep: Provide lockdep_assert{,_once}() helpers
> 
> Extract lockdep_assert{,_once}() helpers to more easily write composite
> assertions like, for example:
> 
> 	lockdep_assert(lockdep_is_held(&drm_device.master_mutex) ||
> 		       lockdep_is_held(&drm_file.master_lookup_lock));
> 
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
> diff --git a/include/linux/lockdep.h b/include/linux/lockdep.h
> index 5cf387813754..0da67341c1fb 100644
> --- a/include/linux/lockdep.h
> +++ b/include/linux/lockdep.h
> @@ -306,31 +306,29 @@ extern void lock_unpin_lock(struct lockdep_map *lock, struct pin_cookie);
>  
>  #define lockdep_depth(tsk)	(debug_locks ? (tsk)->lockdep_depth : 0)
>  
> -#define lockdep_assert_held(l)	do {					\
> -		WARN_ON(debug_locks &&					\
> -			lockdep_is_held(l) == LOCK_STATE_NOT_HELD);	\
> -	} while (0)
> +#define lockdep_assert(cond)		\
> +	do { WARN_ON(debug_locks && !(cond)); } while (0)
>  
> -#define lockdep_assert_not_held(l)	do {				\
> -		WARN_ON(debug_locks &&					\
> -			lockdep_is_held(l) == LOCK_STATE_HELD);		\
> -	} while (0)
> +#define lockdep_assert_once(cond)	\
> +	do { WARN_ON_ONCE(debug_locks && !(cond)); } while (0)
>  
> -#define lockdep_assert_held_write(l)	do {			\
> -		WARN_ON(debug_locks && !lockdep_is_held_type(l, 0));	\
> -	} while (0)
> +#define lockdep_assert_held(l)		\
> +	lockdep_assert(lockdep_is_held(l) != LOCK_STAT_NOT_HELD)
>  
> -#define lockdep_assert_held_read(l)	do {				\
> -		WARN_ON(debug_locks && !lockdep_is_held_type(l, 1));	\
> -	} while (0)
> +#define lockdep_assert_not_held(l)	\
> +	lockdep_assert(lockdep_is_held(l) != LOCK_STATE_HELD)
>  
> -#define lockdep_assert_held_once(l)	do {				\
> -		WARN_ON_ONCE(debug_locks && !lockdep_is_held(l));	\
> -	} while (0)
> +#define lockdep_assert_held_write(l)	\
> +	lockdep_assert(lockdep_is_held_type(l, 0))
>  
> -#define lockdep_assert_none_held_once()	do {				\
> -		WARN_ON_ONCE(debug_locks && current->lockdep_depth);	\
> -	} while (0)
> +#define lockdep_assert_held_read(l)	\
> +	lockdep_assert(lockdep_is_held_type(l, 1))
> +
> +#define lockdep_assert_held_once(l)		\
> +	lockdep_assert_once(lockdep_is_held(l) != LOCK_STAT_NOT_HELD)
> +
> +#define lockdep_assert_none_held_once()		\
> +	lockdep_assert_once(!current->lockdep_depth)
>  
>  #define lockdep_recursing(tsk)	((tsk)->lockdep_recursion)
>  
> @@ -407,6 +405,9 @@ extern int lock_is_held(const void *);
>  extern int lockdep_is_held(const void *);
>  #define lockdep_is_held_type(l, r)		(1)
>  
> +#define lockdep_assert(c)			do { } while (0)
> +#define lockdep_assert_once(c)			do { } while (0)
> +
>  #define lockdep_assert_held(l)			do { (void)(l); } while (0)
>  #define lockdep_assert_not_held(l)		do { (void)(l); } while (0)
>  #define lockdep_assert_held_write(l)		do { (void)(l); } while (0)
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
