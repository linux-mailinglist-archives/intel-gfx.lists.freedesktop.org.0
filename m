Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 963513F8A97
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 16:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F476E872;
	Thu, 26 Aug 2021 14:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 016CA6E86E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 14:59:29 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id me10so6883953ejb.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 07:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=xFXMIzAtDgmXOcLiJVW1C7jqjagasDTptmsNictXpmg=;
 b=faQbgtefcIGp683Q7k/Q3YOYBbWlgIf02jwMdLFBUsRKAeT/SWfg7kqOOCAaVVr5dV
 ldfW1ZliDZ7qIhHQBkLQHX1m+djghPbA1uTihNu0ZNEiYPOmjNn3pXGsOcLKF6lIqlAy
 fB7tUsGK2BCNZVvqCwArCjiudBkUp5r84E6dg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=xFXMIzAtDgmXOcLiJVW1C7jqjagasDTptmsNictXpmg=;
 b=dLzhnRRqKjQFjJoTCWPOkVbT4Q3NgkwkyYPE02+D8EbL688JhBxEO7veLmi1Bc0ahA
 LZIrJCJs15st+ugIP0y/ri9kuX8TRluK7ML4/sGhItLtJTaVuRidbYpXFyl5t3L4tV8b
 AwWACPs9K4W37oW1vQe3yEfPbBg578pMhzBbb0K/DwurSFiptDtFZdLVpaesNokEEMEv
 zbd2bXe1tFo1HEqSPJ22akurfB++pIkqtkFeBX8D0Dl9Wk0k7eOXp3Gbb5Uw7K/zh5aF
 vm4q8oibFn+ExK13rmYv7hEhKzXDrJiW1wBwmFEUrOp0AmnDa7x80eTb3ihSnrfV1/cK
 Wrog==
X-Gm-Message-State: AOAM530GQXfSjpnx7ZaAC8ftoQwEOU2kfy/Ad2lWbT495ORngcprjN7/
 v06tSIbx6aoUHn5odXMY2ZpX4WBTYztESg==
X-Google-Smtp-Source: ABdhPJwZStqZyAARpHQ/9elYfwpIdYFg0K8KQUAeYbBCwiKVH0Lg4urghSCsyjn6tkgXW4TcryL7Rg==
X-Received: by 2002:a17:906:248e:: with SMTP id
 e14mr4750776ejb.343.1629989968293; 
 Thu, 26 Aug 2021 07:59:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u16sm1563517ejy.14.2021.08.26.07.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Aug 2021 07:59:27 -0700 (PDT)
Date: Thu, 26 Aug 2021 16:59:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Brost Matthew <matthew.brost@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YSesTaQD6E1Knt80@phenom.ffwll.local>
References: <20210826104514.400352-1-thomas.hellstrom@linux.intel.com>
 <YSeMr9cBPLOMXhyL@phenom.ffwll.local>
 <69c91b3b524163d1683486d8ab0f9fe8f6893192.camel@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <69c91b3b524163d1683486d8ab0f9fe8f6893192.camel@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Register the migrate
 contexts with their engines
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 26, 2021 at 03:59:30PM +0200, Thomas Hellström wrote:
> On Thu, 2021-08-26 at 14:44 +0200, Daniel Vetter wrote:
> > On Thu, Aug 26, 2021 at 12:45:14PM +0200, Thomas Hellström wrote:
> > > Pinned contexts, like the migrate contexts need reset after resume
> > > since their context image may have been lost. Also the GuC needs to
> > > register pinned contexts.
> > > 
> > > Add a list to struct intel_engine_cs where we add all pinned
> > > contexts on
> > > creation, and traverse that list at resume time to reset the pinned
> > > contexts.
> > > 
> > > This fixes the kms_pipe_crc_basic@suspend-read-crc-pipe-a selftest
> > > for now,
> > > but proper LMEM backup / restore is needed for full suspend
> > > functionality.
> > > However, note that even with full LMEM backup / restore it may be
> > > desirable to keep the reset since backing up the migrate context
> > > images
> > > must happen using memcpy() after the migrate context has become
> > > inactive,
> > > and for performance- and other reasons we want to avoid memcpy()
> > > from
> > > LMEM.
> > > 
> > > Also traverse the list at guc_init_lrc_mapping() calling
> > > guc_kernel_context_pin() for the pinned contexts, like is already
> > > done
> > > for the kernel context.
> > > 
> > > v2:
> > > - Don't reset the contexts on each __engine_unpark() but rather at
> > >   resume time (Chris Wilson).
> > > 
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Brost Matthew <matthew.brost@intel.com>
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> > 
> > I guess it got lost, but I few weeks ago I stumbled over this and
> > wondered
> > why we're even setting up a separate context or at least why a
> > separate vm
> > compared to the gt->vm we have already?
> > 
> > Even on chips with bazillions of copy engines the plan is that we
> > only
> > reserve a single one for kernel migrations, so there's not really a
> > need
> > for quite this much generality I think. Maybe check with Jon
> > Bloomfield on
> > this.
> 
> Are you referring to the generality of the migration code itself or to
> the generality of using a list in this patch to register multiple
> pinned contexts to an engine? 
> 
> For the migration code itself, I figured reserving one copy engine for
> migration was strictly needed for recoverable page-faults? In the
> current version we're not doing that, but just tying a pinned migration
> context to the first available copy engine on the gt, to be used when
> we don't have a ww context available to pin a separate context using a
> random copy engine. Note also the ring size of the migration contexts;
> since we're populating the page-tables for each blit, it's not hard to
> fill the ring and in the end multiple contexts I guess boils down to
> avoiding priority inversion on migration, including blocking high
> priority kernel context tasks.
> 
> As for not using the gt->vm, I'm not completely sure if we can do our
> special page-table setup on that, Got to defer that question to Chris,
> but once Ram's work of supporting 64K LMEM PTEs on that has landed I
> guess we could easily reuse the gt->vm if possible and suitable.

Just on why we have gt->vm and then also the migration vm. The old mail I
typed up on this:

https://lore.kernel.org/dri-devel/CAKMK7uG6g+DQQEcjqeA6=Z2ENHogaMuvKERDgKm5jKq3u+a1jQ@mail.gmail.com/

-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
