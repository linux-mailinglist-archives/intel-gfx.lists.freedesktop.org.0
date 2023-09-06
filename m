Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F32BF79359A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 08:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B86310E565;
	Wed,  6 Sep 2023 06:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7237910E540
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 06:50:07 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-31dcb3928beso421333f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Sep 2023 23:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1693983006; x=1694587806; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=RY8eBpKTWHCMtsXRzQM9B4P0pw9Q3s2j9gJ/f7sz780=;
 b=LXKO+K9fjCl2/0I8ZD+GsrmvAjoPCzrM23yEwaXkTILwCZ2PV8Ic1v9TmXbl6lCKcA
 NWbJuy9N5iz1FGU6bY1i+TPAKESI0DctmwCQg44rYdu3St9de/UyG1GdxR+yUa4tGpcs
 AfqCQTRsA7PLX60jZlRAdBd2UvqQaMaFEe8sU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693983006; x=1694587806;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RY8eBpKTWHCMtsXRzQM9B4P0pw9Q3s2j9gJ/f7sz780=;
 b=DRLBXMkP3/Xyvx5SzNU3RM6vKYK1Y8bm2FZj8rMGs+6foBZ46BEafgJS2Oop61mBG+
 iS7iYKHfL7s9Do/BJU6ivVToiWFm0o1+pYNbwAPMtUsx3fmE+EJWm6ilBhYB2z/3vY+v
 2nkT0VyD9LCRfqNMpyrHaNdyDBFiKf66aOk9kgzFB5mliaZJk02yP2sd6/auNJtwfv5u
 ZiAHQsnaberrN3xYm0HJCIm/9jOGU9GJ3Gxy09VVVCJGE2BkCOk7dIcGuf6l5FXUIg2J
 ZfGXNMyYtECw+1JQmNiMI7npWA466pbwp+3a90CsUgFPxzOez7ypezgk03WQnJRD44gU
 GVeQ==
X-Gm-Message-State: AOJu0YxIyRT8Et0c7Vfa8MkTo+ioxnfH44SxBJrInh7+SVAgQY5Tyu3J
 b9txBTBP2lbbsX8jfzWRnvDUoA==
X-Google-Smtp-Source: AGHT+IGZKnkZJnx6na5RF/fqJFn/Ofx6GtwKlU4cfSWLAhdwHYdtP4uuE1pRRucze9LEcrs2YUel5w==
X-Received: by 2002:a5d:6084:0:b0:31d:1833:4141 with SMTP id
 w4-20020a5d6084000000b0031d18334141mr12074278wrt.6.1693983005709; 
 Tue, 05 Sep 2023 23:50:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 r12-20020adfce8c000000b00317afc7949csm19333866wrn.50.2023.09.05.23.50.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Sep 2023 23:50:04 -0700 (PDT)
Date: Wed, 6 Sep 2023 08:50:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZPghG6GmhO4j/9qV@phenom.ffwll.local>
References: <20230811182011.546026-1-zhanjun.dong@intel.com>
 <3a745c83-e7cf-6a24-5556-8c0c019adfec@intel.com>
 <ZOYtNyqfvqJPeqq2@phenom.ffwll.local>
 <e31b1f49-88cd-d6e4-abbe-51f27712ff83@intel.com>
 <2bd0fb41-58d5-9862-143e-34e31f6f791f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2bd0fb41-58d5-9862-143e-34e31f6f791f@intel.com>
X-Operating-System: Linux phenom 6.4.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Avoid circular locking
 dependency when flush delayed work on gt reset
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
 Daniel Vetter <daniel@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 28, 2023 at 04:01:38PM -0700, John Harrison wrote:
> On 8/23/2023 10:37, John Harrison wrote:
> > On 8/23/2023 09:00, Daniel Vetter wrote:
> > > On Tue, Aug 22, 2023 at 11:53:24AM -0700, John Harrison wrote:
> > > > On 8/11/2023 11:20, Zhanjun Dong wrote:
> > > > > This attempts to avoid circular locking dependency between
> > > > > flush delayed
> > > > > work and intel_gt_reset.
> > > > > When intel_gt_reset was called, task will hold a lock.
> > > > > To cacel delayed work here, the _sync version will also
> > > > > acquire a lock,
> > > > > which might trigger the possible cirular locking dependency warning.
> > > > > When intel_gt_reset called, reset_in_progress flag will be
> > > > > set, add code
> > > > > to check the flag, call async verion if reset is in progress.
> > > > > 
> > > > > Signed-off-by: Zhanjun Dong<zhanjun.dong@intel.com>
> > > > > Cc: John Harrison<John.C.Harrison@Intel.com>
> > > > > Cc: Andi Shyti<andi.shyti@linux.intel.com>
> > > > > Cc: Daniel Vetter<daniel@ffwll.ch>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 ++++++++++-
> > > > >    1 file changed, 10 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git
> > > > > a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > index a0e3ef1c65d2..600388c849f7 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > @@ -1359,7 +1359,16 @@ static void
> > > > > guc_enable_busyness_worker(struct intel_guc *guc)
> > > > >    static void guc_cancel_busyness_worker(struct intel_guc *guc)
> > > > >    {
> > > > > -    cancel_delayed_work_sync(&guc->timestamp.work);
> > > > > +    /*
> > > > > +     * When intel_gt_reset was called, task will hold a lock.
> > > > > +     * To cacel delayed work here, the _sync version will
> > > > > also acquire a lock, which might
> > > > > +     * trigger the possible cirular locking dependency warning.
> > > > > +     * Check the reset_in_progress flag, call async verion
> > > > > if reset is in progress.
> > > > > +     */
> > > > This needs to explain in much more detail what is going on and
> > > > why it is not
> > > > a problem. E.g.:
> > > > 
> > > >     The busyness worker needs to be cancelled. In general that means
> > > >     using the synchronous cancel version to ensure that an in-progress
> > > >     worker will not keep executing beyond whatever is happening that
> > > >     needs the cancel. E.g. suspend, driver unload, etc. However, in the
> > > >     case of a reset, the synchronous version is not required and can
> > > >     trigger a false deadlock detection warning.
> > > > 
> > > >     The business worker takes the reset mutex to protect against resets
> > > >     interfering with it. However, it does a trylock and bails
> > > > out if the
> > > >     reset lock is already acquired. Thus there is no actual deadlock or
> > > >     other concern with the worker running concurrently with a reset. So
> > > >     an asynchronous cancel is safe in the case of a reset rather than a
> > > >     driver unload or suspend type operation. On the other hand, if the
> > > >     cancel_sync version is used when a reset is in progress then the
> > > >     mutex deadlock detection sees the mutex being acquired through
> > > >     multiple paths and complains.
> > > > 
> > > >     So just don't bother. That keeps the detection code happy and is
> > > >     safe because of the trylock code described above.
> > > So why do we even need to cancel anything if it doesn't do anything
> > > while
> > > the reset is in progress?
> > It still needs to be cancelled. The worker only aborts if it is actively
> > executing concurrently with the reset. It might not start to execute
> > until after the reset has completed. And there is presumably a reason
> > why the cancel is being called, a reason not necessarily related to
> > resets at all. Leaving the worker to run arbitrarily after the driver is
> > expecting it to be stopped will lead to much worse things than a fake
> > lockdep splat, e.g. a use after free pointer deref.
> > 
> > John.
> @Daniel Vetter - ping? Is this explanation sufficient? Are you okay with
> this change now?

Sorry for the late reply, I'm constantly behind on mails :-/ Ping me on
irc next time around if I don't reply, that's quicker.

"presumably" isn't good enough for locking design. Either you know, and
can prove it all, or you shouldn't touch the code and its locking design
before you've figured this out.

Again, either this is a deadlock, race condition, or the cancel isn't
necessary. And this argument works in full generality. All this patch does
it replace the dealock with one of the other two, and that's not good
enough if you don't even know which one it is.

- if you need the cancel, you have a race condition

- if you don't have a race condition, you don't need the cancel

- currently you have the deadlock

"presumably" and "maybe" aint enoug for locking design.

Cheers, Daniel

> 
> John.
> 
> > 
> > > 
> > > Just remove the cancel from the reset path as uneeded instead, and
> > > explain
> > > why that's ok? Because that's defacto what the cancel_work with a
> > > potential deadlock scenario for cancel_work_sync does, you either don't
> > > need it at all, or the replacement creates a bug.
> > > -Daniel
> > > 
> > > > 
> > > > John.
> > > > 
> > > > 
> > > > > +    if (guc_to_gt(guc)->uc.reset_in_progress)
> > > > > +        cancel_delayed_work(&guc->timestamp.work);
> > > > > +    else
> > > > > + cancel_delayed_work_sync(&guc->timestamp.work);
> > > > >    }
> > > > >    static void __reset_guc_busyness_stats(struct intel_guc *guc)
> > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
