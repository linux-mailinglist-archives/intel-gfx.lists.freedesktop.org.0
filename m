Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121AD1A6A54
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 18:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6582189FD9;
	Mon, 13 Apr 2020 16:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C6A6ECEC;
 Fri, 10 Apr 2020 14:15:12 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id b72so1079236pfb.11;
 Fri, 10 Apr 2020 07:15:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xO1FGU/icOILvFWOuncN4qsCUUWcHUB8OtOA1cu0N2s=;
 b=VoTuOVdEcNBfcHYU89RCVbHhc2qzCD4cXA1F88goVf53FmaPJciQC7iylHs9d7Hcjp
 7R0bjrWVPeK9lT8uS/fiLX0N4I/7GBPYT/M6M1/T2DnoAaJhkWQM8rKM2y65PkOPtswM
 9bn1naovK7F1iu7XcNQih4uK8cgDd1J9c+gY9nxacBLBCv/meUPaH5oqjdm0ZDNFtLyt
 HMNRSWOTMKPIUlgM8oOcyfDI77aIEXFOytC4DDya4XML8jClewGc+MuBydPCQe5HS68r
 OXAFjuq6bDl0/zgMr7q1dBUrXGfX6kpW2NT6sf5CCQQbyi95rjHVrabyAOkAe6ypDjSJ
 xBQg==
X-Gm-Message-State: AGi0Pua/o1JY3DTTfue/Fuo5Uy74LvCg8KlokDMHIad6gIdPQIUytEzD
 8OmJ1Y974LiA/WCF9AB5LhE=
X-Google-Smtp-Source: APiQypJSCa9K9MnX8xss6uk3WdmwEdOYIYI5gQFTkBUq5NrSTxzecl4NUnAlt9445YegA/m/FHQj1Q==
X-Received: by 2002:a65:53cf:: with SMTP id z15mr4747258pgr.367.1586528112467; 
 Fri, 10 Apr 2020 07:15:12 -0700 (PDT)
Received: from sultan-box.localdomain (static-198-54-129-52.cust.tzulo.com.
 [198.54.129.52])
 by smtp.gmail.com with ESMTPSA id t126sm902648pfb.29.2020.04.10.07.15.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 07:15:11 -0700 (PDT)
Date: Fri, 10 Apr 2020 07:15:08 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20200410141508.GA2025@sultan-box.localdomain>
References: <20200407065210.GA263852@kroah.com>
 <20200407071809.3148-1-sultan@kerneltoast.com>
 <20200410090838.GD1691838@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410090838.GD1691838@kroah.com>
X-Mailman-Approved-At: Mon, 13 Apr 2020 16:55:00 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix ref->mutex deadlock in
 i915_active_wait()
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 10, 2020 at 11:08:38AM +0200, Greg KH wrote:
> On Tue, Apr 07, 2020 at 12:18:09AM -0700, Sultan Alsawaf wrote:
> > From: Sultan Alsawaf <sultan@kerneltoast.com>
> > 
> > The following deadlock exists in i915_active_wait() due to a double lock
> > on ref->mutex (call chain listed in order from top to bottom):
> >  i915_active_wait();
> >  mutex_lock_interruptible(&ref->mutex); <-- ref->mutex first acquired
> >  i915_active_request_retire();
> >  node_retire();
> >  active_retire();
> >  mutex_lock_nested(&ref->mutex, SINGLE_DEPTH_NESTING); <-- DEADLOCK
> > 
> > Fix the deadlock by skipping the second ref->mutex lock when
> > active_retire() is called through i915_active_request_retire().
> > 
> > Note that this bug only affects 5.4 and has since been fixed in 5.5.
> > Normally, a backport of the fix from 5.5 would be in order, but the
> > patch set that fixes this deadlock involves massive changes that are
> > neither feasible nor desirable for backporting [1][2][3]. Therefore,
> > this small patch was made to address the deadlock specifically for 5.4.
> > 
> > [1] 274cbf20fd10 ("drm/i915: Push the i915_active.retire into a worker")
> > [2] 093b92287363 ("drm/i915: Split i915_active.mutex into an irq-safe spinlock for the rbtree")
> > [3] 750bde2fd4ff ("drm/i915: Serialise with remote retirement")
> > 
> > Fixes: 12c255b5dad1 ("drm/i915: Provide an i915_active.acquire callback")
> > Cc: <stable@vger.kernel.org> # 5.4.x
> > Signed-off-by: Sultan Alsawaf <sultan@kerneltoast.com>
> > ---
> >  drivers/gpu/drm/i915/i915_active.c | 27 +++++++++++++++++++++++----
> >  drivers/gpu/drm/i915/i915_active.h |  4 ++--
> >  2 files changed, 25 insertions(+), 6 deletions(-)
> 
> Now queued up, thanks.
> 
> greg k-h

Hi Greg,

Thanks for queuing this! However, you queued the v1 version of the patch instead
of v2. Please pick the v2 version instead.

Thanks,
Sultan
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
