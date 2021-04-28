Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FBF36D911
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 16:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010F06EB46;
	Wed, 28 Apr 2021 14:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6639A6EB46
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 14:02:54 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 n3-20020a05600c4f83b02901425630b2c2so2640035wmq.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 07:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=q1sJQrOGswfuP11SFg57M6H5H5P7N/Jx6RMhuzkUD2M=;
 b=Xrdt4/hsdA8NxJlHD7y7o8k3nzNv4pOXFSRZKzLg8QTpTq5wtywjKsf1gwmSc06y89
 mk6amtxglhCDnLA2qt1x40+78leArMOMbavsLRf6gu5+ZV1NHr2mTPZy2RwhCOBihKxB
 WNWOxjaJbRYBz3wwhdhCsxu07dzlwy5S7wJQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q1sJQrOGswfuP11SFg57M6H5H5P7N/Jx6RMhuzkUD2M=;
 b=jjW30+T/XbNJaIpC/lqc+w1kO5fEEMBVl+IpF2OjCq+lRxwIPstVuOB5JuSGaX2o0N
 x2zhRfgLP2US4S7boE5sPBlgVJ9/EnZpQtpqC6X92CrycFI9nyDxZtcF1BrA5P0rmEhP
 4z6S/qa92GfSdQcMiCeh/k7vdgRjIreu0iusdaekapIFWUmW18cC72C/qaXU98o5Jry+
 onIcUb7jYXridIns8CCwWKLo37d5Rh7qXLa9kuQPs3Fh7bOhh3fzCJcQq+5+eAziGBMH
 mf2DM3YE1PTmri+uguyZa4xbwC+Wv5o9DEFkXBfIphDgAOJCLv7qafntY7hS03IIz1YE
 LZQQ==
X-Gm-Message-State: AOAM532jwbZ8MJwMBVbXU5eh990Nmg8UcYs/YAtZVUswKIreFVfTAamr
 P4hdd1KG1EeGSpnrckknmbxdig==
X-Google-Smtp-Source: ABdhPJwzt7Vq+P398t8cIrCwf0yZqQexNtzX9KcJJDmd7Bm1rIvuvHv5RJdhbIrg1lFZAHnx1T/BgQ==
X-Received: by 2002:a1c:1bc1:: with SMTP id b184mr4626781wmb.119.1619618573134; 
 Wed, 28 Apr 2021 07:02:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u2sm6328937wmc.22.2021.04.28.07.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Apr 2021 07:02:52 -0700 (PDT)
Date: Wed, 28 Apr 2021 16:02:50 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YIlrCmvC10oAiRcL@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-10-jason@jlekstrand.net>
 <YIk14zVfa8Mw4rUF@phenom.ffwll.local>
 <6b388d4d-1d50-94f3-344a-5b6b3639e8ad@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b388d4d-1d50-94f3-344a-5b6b3639e8ad@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 09/21] drm/i915/gem: Disallow creating
 contexts with too many engines
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 28, 2021 at 11:42:31AM +0100, Tvrtko Ursulin wrote:
> 
> On 28/04/2021 11:16, Daniel Vetter wrote:
> > On Fri, Apr 23, 2021 at 05:31:19PM -0500, Jason Ekstrand wrote:
> > > There's no sense in allowing userspace to create more engines than it
> > > can possibly access via execbuf.
> > > 
> > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > ---
> > >   drivers/gpu/drm/i915/gem/i915_gem_context.c | 7 +++----
> > >   1 file changed, 3 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > index 5f8d0faf783aa..ecb3bf5369857 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > @@ -1640,11 +1640,10 @@ set_engines(struct i915_gem_context *ctx,
> > >   		return -EINVAL;
> > >   	}
> > > -	/*
> > > -	 * Note that I915_EXEC_RING_MASK limits execbuf to only using the
> > > -	 * first 64 engines defined here.
> > > -	 */
> > >   	num_engines = (args->size - sizeof(*user)) / sizeof(*user->engines);
> > 
> > Maybe add a comment like /* RING_MASK has not shift, so can be used
> > directly here */ since I had to check that :-)
> > 
> > Same story about igt testcases needed, just to be sure.
> > 
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> I am not sure about the churn vs benefit ratio here. There are also patches
> which extend the engine selection field in execbuf2 over the unused
> constants bits (with an explicit flag). So churn upstream and churn in
> internal (if interesting) for not much benefit.

This isn't churn.

This is "lock done uapi properly".
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
