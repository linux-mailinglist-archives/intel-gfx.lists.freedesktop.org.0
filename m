Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C927139B507
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 10:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BF26E97B;
	Fri,  4 Jun 2021 08:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3AF96E97C
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 08:39:51 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id q5so8472623wrm.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 01:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ezEsu27aEau2eaETHRTfQHmZBfdfdkSn7JD2IdJmAio=;
 b=G+qvhdM4gktCRfonXyfbjHgCFmAUi1BEv6xiMOsLkOVyUlq5QcvqS5Do95RgT7o8a1
 7SbFdaLrUrYAYHCJjG/lA0lv1SJulyvyG7iUiqQbw4qZMfdKLt2sylENJtptZeOtx05/
 WIVRnsIVDfv9GIUNxBR+4dfpJmHlev9Sz0exw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ezEsu27aEau2eaETHRTfQHmZBfdfdkSn7JD2IdJmAio=;
 b=cZUpdHdm3dc61Do0qNN09RnrT92xd1fMhi7fdpfZLiU4v52BHFjg/TrUnn4wg7ra42
 w9b41IzrT/WV4jNYeL/jFEuj1PeXfoNMOq/3hRETY1kG5tuLMeG74oPy73ygzhxAdJbf
 rl7MIMSoAW+0cHLBQCp/yMUWFxMX92nydmX7Eco+ad06mPycva7OTKgp3ZTY1eHnqfh8
 gn/b7nzj3XmThIjgW3LF2V1IYpWfniq+JPHxXs3/Vp3Onusm2TsUgDnRmfg1qW+v6kSC
 gv6jD34awdgmGyXcFmvSnWQwcoImO/X4XSzHV/1g3vRVv5aw9ohCZV3qOZPDcbBCiCo6
 l5ww==
X-Gm-Message-State: AOAM532cmz3jsaa46kDpx0mCu3BDkYhnaByA4S+zaewS45g8ttmZd9Iv
 LnOu1scvQnVi85uNBUMNkdFGSw==
X-Google-Smtp-Source: ABdhPJzQv2owLIkjkqedlGWF5li5K/eUjppNQrM+HCegAIctMJCErWI78n/PunWF3orYuDPbWYinoQ==
X-Received: by 2002:a5d:6da8:: with SMTP id u8mr2613859wrs.391.1622795990273; 
 Fri, 04 Jun 2021 01:39:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w13sm5233125wmi.4.2021.06.04.01.39.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 01:39:49 -0700 (PDT)
Date: Fri, 4 Jun 2021 10:39:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YLnm00d5gAO7/WmZ@phenom.ffwll.local>
References: <20210603051630.2635-1-matthew.brost@intel.com>
 <20210603051630.2635-16-matthew.brost@intel.com>
 <454067aa-cb2b-541d-21a7-84706a2d93a6@intel.com>
 <20210603161014.GA620@sdutt-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210603161014.GA620@sdutt-i7>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 15/20] drm/i915/guc: Ensure H2G buffer
 updates visible before tail update
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 03, 2021 at 09:10:14AM -0700, Matthew Brost wrote:
> On Thu, Jun 03, 2021 at 11:44:57AM +0200, Michal Wajdeczko wrote:
> > 
> > 
> > On 03.06.2021 07:16, Matthew Brost wrote:
> > > Ensure H2G buffer updates are visible before descriptor tail updates by
> > > inserting a barrier between the H2G buffer update and the tail. The
> > > barrier is simple wmb() for SMEM and is register write for LMEM. This is
> > > needed if more than 1 H2G can be inflight at once.
> > > 
> > > If this barrier is not inserted it is possible the descriptor tail
> > > update is scene by the GuC before H2G buffer update which results in the
> > > GuC reading a corrupt H2G value. This can bring down the H2G channel
> > > among other bad things.
> > > 
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > > Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 28 +++++++++++++++++++++++
> > >  1 file changed, 28 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > > index 80976fe40fbf..31f83956bfc3 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> > > @@ -328,6 +328,28 @@ static u32 ct_get_next_fence(struct intel_guc_ct *ct)
> > >  	return ++ct->requests.last_fence;
> > >  }
> > >  
> > > +static void write_barrier(struct intel_guc_ct *ct)
> > > +{
> > > +	struct intel_guc *guc = ct_to_guc(ct);
> > > +	struct intel_gt *gt = guc_to_gt(guc);
> > > +
> > > +	if (i915_gem_object_is_lmem(guc->ct.vma->obj)) {
> > > +		GEM_BUG_ON(guc->send_regs.fw_domains);
> > > +		/*
> > > +		 * This register is used by the i915 and GuC for MMIO based
> > > +		 * communication. Once we are in this code CTBs are the only
> > > +		 * method the i915 uses to communicate with the GuC so it is
> > > +		 * safe to write to this register (a value of 0 is NOP for MMIO
> > > +		 * communication). If we ever start mixing CTBs and MMIOs a new
> > > +		 * register will have to be chosen.
> > > +		 */
> > > +		intel_uncore_write_fw(gt->uncore, GEN11_SOFT_SCRATCH(0), 0);
> > 
> > can't we at least start with SOFT_SCRATCH register that is not used for
> > GuC MMIO based communication on Gen12 LMEM platforms? see [1]
> > 
> 
> We likely can use this but I really don't feel comfortable switching the
> register without some more testing first (e.g. let's change in this in
> internal, let it soak for bit, then make the change upstream).
> 
> > I really don't feel comfortable that we are touching a register that
> > elsewhere is protected with the mutex. And mixing CTBs and MMIO is not
> > far away.
> >
> 
> The only code that mixes CTBs and MMIOs is SRIOV which is a ways away
> from landing.

Maybe add a FIXME note as part of the SRIOV patch stack in internal to
track this?
-Daniel

> 
> Matt
>  
> > Michal
> > 
> > [1]
> > https://lore.kernel.org/intel-gfx/51b9bd05-7d6f-29f1-de0f-3a14bade6c9c@intel.com/
> > 
> > > +	} else {
> > > +		/* wmb() sufficient for a barrier if in smem */
> > > +		wmb();
> > > +	}
> > > +}
> > > +
> > >  /**
> > >   * DOC: CTB Host to GuC request
> > >   *
> > > @@ -411,6 +433,12 @@ static int ct_write(struct intel_guc_ct *ct,
> > >  	}
> > >  	GEM_BUG_ON(tail > size);
> > >  
> > > +	/*
> > > +	 * make sure H2G buffer update and LRC tail update (if this triggering a
> > > +	 * submission) are visible before updating the descriptor tail
> > > +	 */
> > > +	write_barrier(ct);
> > > +
> > >  	/* now update desc tail (back in bytes) */
> > >  	desc->tail = tail * 4;
> > >  	return 0;
> > > 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
