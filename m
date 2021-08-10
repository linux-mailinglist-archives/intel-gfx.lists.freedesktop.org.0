Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B04803E586A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 12:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB20E89FDD;
	Tue, 10 Aug 2021 10:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C308C89FDB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 10:33:55 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id k4so12675207wms.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 03:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OaJmdgEp3QTwYAWlpVTyUztKhEOmPrL3HSrfFe8B/wk=;
 b=ILdF5A2TkAVWmUIUWU8mTtivs21ZpMnLCHnQ8Qo/VJqflDpMdr/82ZOpHkvnJZGg1K
 vIGrBOkVRmXQMbVjQnOYjcQ2611GNGMd2ABcJlOq6InXDrmkcEyv0Us7ZHV9jkwbXFlp
 3R4eHlgGEotKu2jJFJQ9sxFtCP6C8acPCR1wc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OaJmdgEp3QTwYAWlpVTyUztKhEOmPrL3HSrfFe8B/wk=;
 b=ccFSIBnP5xMoenMApIuRhzA7vsQR5EDVDLXX3lkiKyZleER3yjJbz/GmNzD7nC0Brm
 +e6lpcQ6KwbZmmdnHGaqurjdZKjE5nawMfVIiQPg/r+qgM+Pty6f7QAzWXhRxLo6egud
 +/8aWrLXeb63JnorcvpzrwsRz0Mrgd/eHzLiqjKAAYvB2Z2lOHZ92llNCeMy3ZDoj9Kn
 blutNGgzc+c8D9R0m45jYzJVZmqMnY4c0QaaCEIODTJQMfb6zLy1yFad2mGnmTJdWwKV
 38KwwkLIceiE8c3XA7oJpdtGsYM1jeXNujrLxxinH0A5M81eG61d5DU1ni5v/hH7fVcM
 iocQ==
X-Gm-Message-State: AOAM530Nqlnva1GyTtwj4no7X2bSwNz1CWpufoSJ4j3T3BGxNz4fDErp
 yRZ25e3lTxttKVpMukDuRTvaOg==
X-Google-Smtp-Source: ABdhPJwhpgbbeSpaqq1kenoEfApvijwRr0Ccn20YLx/9rmy8sqoEoxR/XAplTUFsOFNjnlmBU5MMpw==
X-Received: by 2002:a05:600c:213:: with SMTP id 19mr3978077wmi.2.1628591634230; 
 Tue, 10 Aug 2021 03:33:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t1sm2429782wma.25.2021.08.10.03.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 03:33:53 -0700 (PDT)
Date: Tue, 10 Aug 2021 12:33:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Message-ID: <YRJWD4pI5mW+gyoR@phenom.ffwll.local>
References: <20210808180757.81440-1-matthew.brost@intel.com>
 <20210808180757.81440-3-matthew.brost@intel.com>
 <YREv3mwWxH6cN9I7@phenom.ffwll.local>
 <20210809193739.GA124301@DUT151-ICLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809193739.GA124301@DUT151-ICLU.fm.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Fix memory
 corruption in live_lrc_isolation
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

On Mon, Aug 09, 2021 at 07:37:39PM +0000, Matthew Brost wrote:
> On Mon, Aug 09, 2021 at 03:38:38PM +0200, Daniel Vetter wrote:
> > On Sun, Aug 08, 2021 at 11:07:56AM -0700, Matthew Brost wrote:
> > > GuC submission has exposed an existing memory corruption in
> > > live_lrc_isolation. We believe that some writes to the watchdog offsets
> > > in the LRC (0x178 & 0x17c) can result in trashing of portions of the
> > > address space. With GuC submission there are additional objects which
> > > can move the context redzone into the space that is trashed. To
> > > workaround this avoid poisoning the watchdog.
> > 
> > A Bspec reference here would be good (we can quote anything that's marked
> > for public release, so doesn't have one of the IP markers).
> >
> 
> Let me see what I dig up in the bspec.
> 
> BTW - Hopefully we can root cause this soon with a proper fix.

Well if it's work-in-progress duct-tape without reference that's fine
too, then perhaps sprinkle a JIRA number here (just not the full link,
intel IT doesn't like those leaking). Just something that in a few months
when someone reads that code they can stitch together the story again.
-Daniel

>  
> > Also I think the above should be replicated in condensed form instead of
> > the XXX comment.
> >
> 
> Sure.
> 
> Matt
> 
> > With those: Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch> since I
> > definitely have enough clue here for a detailed review.
> > -Daniel
> > 
> > > 
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/selftest_lrc.c | 29 +++++++++++++++++++++++++-
> > >  1 file changed, 28 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > > index b0977a3b699b..6500e9fce8a0 100644
> > > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > > @@ -1074,6 +1074,32 @@ record_registers(struct intel_context *ce,
> > >  	goto err_after;
> > >  }
> > >  
> > > +static u32 safe_offset(u32 offset, u32 reg)
> > > +{
> > > +	/* XXX skip testing of watchdog */
> > > +	if (offset == 0x178 || offset == 0x17c)
> > > +		reg = 0;
> > > +
> > > +	return reg;
> > > +}
> > > +
> > > +static int get_offset_mask(struct intel_engine_cs *engine)
> > > +{
> > > +	if (GRAPHICS_VER(engine->i915) < 12)
> > > +		return 0xfff;
> > > +
> > > +	switch (engine->class) {
> > > +	default:
> > > +	case RENDER_CLASS:
> > > +		return 0x07ff;
> > > +	case COPY_ENGINE_CLASS:
> > > +		return 0x0fff;
> > > +	case VIDEO_DECODE_CLASS:
> > > +	case VIDEO_ENHANCEMENT_CLASS:
> > > +		return 0x3fff;
> > > +	}
> > > +}
> > > +
> > >  static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
> > >  {
> > >  	struct i915_vma *batch;
> > > @@ -1117,7 +1143,8 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
> > >  		len = (len + 1) / 2;
> > >  		*cs++ = MI_LOAD_REGISTER_IMM(len);
> > >  		while (len--) {
> > > -			*cs++ = hw[dw];
> > > +			*cs++ = safe_offset(hw[dw] & get_offset_mask(ce->engine),
> > > +					    hw[dw]);
> > >  			*cs++ = poison;
> > >  			dw += 2;
> > >  		}
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
