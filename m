Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A64B53EEA67
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 11:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0C96E156;
	Tue, 17 Aug 2021 09:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA056E03D
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 09:57:57 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 j12-20020a05600c1c0c00b002e6d80c902dso1730203wms.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 02:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SRRzYeE+xxFkllvlGfJl7y6YVJSNGtGssvXCdiE3AD8=;
 b=IVCX3wL0R9FW/Q0pCEiDP2bpU7M9TZfXvJdJqqnxD3R1eeIKNK+2lqC2mL1rC1IIaC
 d0iCKCqPBLL+ziiYl6r0U0BcYU5fj3UaMYjawvaA4Cfeanorp4mkCr35Gef5jy9bwlnZ
 pFxglOoi2mWOcNwg4w4I7fM8nKfkrNyqKRGIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SRRzYeE+xxFkllvlGfJl7y6YVJSNGtGssvXCdiE3AD8=;
 b=kHZjIg6QCRARDEooJv3Bc8axOu7nDwCAMxN5NfpwK0U5byk3Ukbc+nO9VyT8nH+e2T
 9e8P98rjcV1HfGPiVZv4GLoxqMX6vrc7IUUXOjStPSi+Wi+jfe2wOMJfAvUW9I+H/nTq
 fGQExWqr0BnWoHt/6icnVDTR9yRtJh9206r6tJaYAQO5kl2qoKe7mKi3jgDviBy3s5Vn
 vo3CLUFGOhbxldNG3+LiNhoRVaO4aepcIefE0rEage7gE/vXhCsjiyNBRbaKhkt/Ea8l
 C+5+M1u85ht3jJWEHpdlO+VviSboHZ/ygXswsbtfh2RlI23teVGkfa9C5MF2ZfGF1QoQ
 E6nQ==
X-Gm-Message-State: AOAM531mtoih/DrqFaxCsGTj+CSetq0eg06tjzC7hAC8FPmtgZw37bnW
 QA11kkip8mo+4oIStnqcy93ldg==
X-Google-Smtp-Source: ABdhPJyRWd6X6b2HFB07sEufbn6AT32uilCwUUyIp3yuCrdGLbwEmRraNzfr0DJs4f6vZSzvjTyQ9g==
X-Received: by 2002:a05:600c:2049:: with SMTP id
 p9mr2410603wmg.37.1629194276045; 
 Tue, 17 Aug 2021 02:57:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a77sm1689451wmd.31.2021.08.17.02.57.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 02:57:55 -0700 (PDT)
Date: Tue, 17 Aug 2021 11:57:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch
Message-ID: <YRuIIf/sAof1ZYoz@phenom.ffwll.local>
References: <20210816135139.10060-1-matthew.brost@intel.com>
 <20210816135139.10060-9-matthew.brost@intel.com>
 <YRuFySMEGtbQegKa@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YRuFySMEGtbQegKa@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 08/22] drm/i915/guc: Don't enable scheduling
 on a banned context, guc_id invalid, not registered
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

On Tue, Aug 17, 2021 at 11:47:53AM +0200, Daniel Vetter wrote:
> On Mon, Aug 16, 2021 at 06:51:25AM -0700, Matthew Brost wrote:
> > When unblocking a context, do not enable scheduling if the context is
> > banned, guc_id invalid, or not registered.
> > 
> > Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > Cc: <stable@vger.kernel.org>
> > ---
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index c3b7bf7319dd..353899634fa8 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -1579,6 +1579,9 @@ static void guc_context_unblock(struct intel_context *ce)
> >  	spin_lock_irqsave(&ce->guc_state.lock, flags);
> >  
> >  	if (unlikely(submission_disabled(guc) ||
> > +		     intel_context_is_banned(ce) ||
> > +		     context_guc_id_invalid(ce) ||
> > +		     !lrc_desc_registered(guc, ce->guc_id) ||
> >  		     !intel_context_is_pinned(ce) ||
> >  		     context_pending_disable(ce) ||
> >  		     context_blocked(ce) > 1)) {
> 
> I think this entire if condition here is screaming that our intel_context
> state machinery for guc is way too complex, and on the wrong side of
> incomprehensible.
> 
> Also some of these check state outside of the context, and we don't seem
> to hold spinlocks for those, or anything else.
> 
> I general I have no idea which of these are defensive programming and
> cannot ever happen, and which actually can happen. There's for sure way
> too many races going on given that this is all context-local stuff.

Races here meaining that we seem to be dropping locks while the context is
in an inconsistent state, which then means that every other code path
touching contexts needs to check whether the context is in an inconsistent
state.

This is a bit an example of protecting code, vs protecting datastructures.
Protecting code is having state bits of intermediate/transitional state
leak outside of the locked section (like context_blocked), so that every
other piece of code must be aware about the transition and not screw
things up for worse when they race.

This means your review and validation effort scales O(N^2) with the amount
of code and features you have. Which doesn't work.

Datastructure or object oriented locking design goes different:

1. You figure out what the invariants of your datastructure are. That
means what should hold after each state transition is finished. I have no
idea what is the solution for all them here, but e.g. why is
context_blocked even visible to other threads? Usual approach is a) take
lock b) do whatever is necessary (we're talking about reset stuff here, so
performance really doesn't matter) c) unlock. I know that i915-gem is full
of these leaky counting things, but that's really not a good design.

2. Next up, for every piece of state you think how it's protected with a
per-object lock. The fewer locks you have (but still per-objects so it's
not becoming a mess for different reasons) the higher chances that you
don't leak inconsistent state to other threads. This is a bit tricky when
multipled objects are involved, or if you have to split your locks for a
single object because some of it needs to be accessed from irq context
(like a tasklet).

3. Document your rules in kerneldoc, so that when new code gets added you
don't have to review everything for consistency against the rules. This
way you get overall O(N) effort for validation and review, because all you
have to do is check every function that changes state against the overall
contract, and not everything against everything else.

If you have a pile of if checks every time you grab a lock, your locking
design has too much state that leaks outside of the locked sections.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
