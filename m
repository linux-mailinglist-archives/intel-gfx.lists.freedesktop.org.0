Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9252A391DB0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 19:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEACF6ED82;
	Wed, 26 May 2021 17:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97DB6E4EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 17:15:54 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id z16so3013472ejr.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 10:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=G95lQtppxzxKB8WlCyq1986FVCcT3t0PVz3tQLGrKDA=;
 b=MkxfIm5Uvm30s9q32KbqAtWAtb3WfRwmgP/PLs9bGA/K+cZegaGO+zF+cexXf/TUvh
 /jc5XJRJeVrK/GXTWcsKSSwVN9UrlT4FN1P/SxZdbivLTl2+7oxAmiGMbAkZ1YDoYJQI
 8ryAvhpS+W+YkaybNmcXE9Y+cXxe1VG857nmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G95lQtppxzxKB8WlCyq1986FVCcT3t0PVz3tQLGrKDA=;
 b=DtopHIUIXT3Am+U3DyDyaYObSW2TmxUL+EcCu9QS5L3LIo6BHlYr2LxZZsJiTDawir
 PpykKE2ZrR4+KLmDpDEj+5VGkhmCkT3YLFh2oVkeXmWBs+809oK98slKRGvfSeyc4xpL
 gGuLoBjV8GwhZM+bAoacnGIMJlO1p00Xj1azOtJnzxzeNMFx9SBwSyzDcspjZAmosI7k
 yVFQk5Dk74eob8d7eb2HoJqd4RMv5/iYar/X6L8lgN3les2tIRaeUVCJB7HESWAoCHB9
 9NT+vMErPEnFwYykmjzocGCO+z1pmFZKEhSBY+9X5kGoa2wlz+hhl6YLD5YW4YXdaiA3
 hZdQ==
X-Gm-Message-State: AOAM533Bq4f1uI6dIwAfKZB9a7o/mDHXDMo5VJVJeirJ5DbFT8MsAem6
 o/MXAxxxQQXgeFFPd+66zvh/OBEV+6wy6A==
X-Google-Smtp-Source: ABdhPJwsmcLSaBfriMCdbmlirZBpO+MarS7VaWMil4wVz1V+iBphV9fWh/PEvcTzIu0oLY8oCEhobA==
X-Received: by 2002:a17:907:dab:: with SMTP id
 go43mr33499521ejc.164.1622049353527; 
 Wed, 26 May 2021 10:15:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c10sm13035823eds.90.2021.05.26.10.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 10:15:53 -0700 (PDT)
Date: Wed, 26 May 2021 19:15:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YK6CRz1PTwJDswWX@phenom.ffwll.local>
References: <20210521183215.65451-1-matthew.brost@intel.com>
 <YK0CKLSCx0qowxhy@phenom.ffwll.local>
 <20210525155341.GA6585@sdutt-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210525155341.GA6585@sdutt-i7>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 0/3] Clean a few backend interfaces in the
 i915
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 25, 2021 at 08:53:42AM -0700, Matthew Brost wrote:
> On Tue, May 25, 2021 at 03:56:56PM +0200, Daniel Vetter wrote:
> > On Fri, May 21, 2021 at 11:32:12AM -0700, Matthew Brost wrote:
> > > As discussed in [1] start merging some support patches as a precursor to
> > > GuC submission the i915. This is step #1 mentioned in [1].
> > > 
> > > [1] https://patchwork.freedesktop.org/series/89844/
> > > 
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > 
> > Pushed to drm-intel-gt-next, thanks for patches&reviews. Btw you can also
> > ping John H or Daniele for pushing stuff for you, should be quicker than
> > waiting for me to return from a lon w/e :-)
> > 
> 
> Thanks for the push. I don't think John H has push rights upstream, I
> know Daniele has rights but I don't think is up to date with the process
> to merge patches. I can discuss this with him today and see if he can
> get reenabled on this process.

John Harrison is 1 review short from qualifying for drm-intel.git commit
rights (if I got it right, maybe double-check), so please motivate him to
fix this asap so we have more committers.
-Daniel

> 
> Matt
> 
> > Plus I _really_ don't want to get back into the business of pushing other
> > people's work ...
> > 
> > Cheers, Daniel
> > 
> > > 
> > > Chris Wilson (3):
> > >   drm/i915/gt: Move engine setup out of set_default_submission
> > >   drm/i915/gt: Move submission_method into intel_gt
> > >   drm/i915/gt: Move CS interrupt handler to the backend
> > > 
> > >  drivers/gpu/drm/i915/gt/intel_engine.h        |  8 +-
> > >  drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 19 +++-
> > >  drivers/gpu/drm/i915/gt/intel_engine_types.h  | 14 +--
> > >  .../drm/i915/gt/intel_execlists_submission.c  | 95 +++++++++++++------
> > >  .../drm/i915/gt/intel_execlists_submission.h  |  3 -
> > >  drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 82 +++++-----------
> > >  drivers/gpu/drm/i915/gt/intel_gt_irq.h        | 23 +++++
> > >  drivers/gpu/drm/i915/gt/intel_gt_types.h      |  7 ++
> > >  drivers/gpu/drm/i915/gt/intel_reset.c         |  7 +-
> > >  .../gpu/drm/i915/gt/intel_ring_submission.c   | 12 ++-
> > >  drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
> > >  drivers/gpu/drm/i915/gt/selftest_execlists.c  |  2 +-
> > >  .../drm/i915/gt/selftest_ring_submission.c    |  2 +-
> > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 64 ++++++-------
> > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.h |  1 -
> > >  drivers/gpu/drm/i915/i915_irq.c               | 10 +-
> > >  drivers/gpu/drm/i915/i915_perf.c              | 10 +-
> > >  17 files changed, 199 insertions(+), 162 deletions(-)
> > > 
> > > -- 
> > > 2.28.0
> > > 
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
