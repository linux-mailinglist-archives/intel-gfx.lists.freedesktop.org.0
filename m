Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4EC843117
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E991C11370B;
	Tue, 30 Jan 2024 23:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9201A11370B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:23:15 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id
 d75a77b69052e-42ab03a5aeeso12160221cf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656935; x=1707261735;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=hc0ep6bTolCm71Ed0ZiTXKj3mACzFJ2Tn/MqsEL9GWI=;
 b=Ms8DxiyM2s2e0cTmkg8DRcwa00RArfQ0mcyep4gHt+1sbqHMsVBCFwKaWDwhcIlVYV
 Esy8IpPHXin6CE7LPIDn3We5SVrU1dG+hcMHLsOGWNo1Z/G1KARJibQBZToCU8vgXESx
 pJoAeoYur1FIm4Xwld5bAp2MErQr8D8HM2Xfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656935; x=1707261735;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hc0ep6bTolCm71Ed0ZiTXKj3mACzFJ2Tn/MqsEL9GWI=;
 b=Nu3bGjmzE5uL2ghhKozkFQ6aUYso73+7Kx2GLVZjWNaM7Hm+zgEd4ZOZvQyOK89rFP
 BzAATbyQeaM2k3Fk269eIW+Y1AXRED+FFUemV/pBX4yaBH5iSdvcp22YMM3XxWSYC9K+
 viyUUbIPY4E2LKkgmDE8kvc+zhBPuStllJ8pM7iKuoOQPrBQr/99UJd6pOJWCCgLVGsP
 yrihVE500EtHpwF4u6EeWvJt7w8R+MJzYnxAmHKVHsYRfc+AHIE4zwzHt/pKeFb6X8En
 fbwnkKekJMk6pqmdb5UEdJbfQM5jfaf3VAgD7tBu4Od88CI/RlO9UiDcxmezMSZHpAO3
 yCgg==
X-Gm-Message-State: AOJu0YyaxDHk4gbdTEIYSblslZdluQbLbJVvf7vMs6EdDzQM49HXPB9X
 60OzykPYgLb9SlWgpRksOXekfVrQj4HBZVQSXkP3YJHYPb5cM0hU9H1Sgmw5Qw==
X-Google-Smtp-Source: AGHT+IH0iadIuiKDqYu6wFojWfoaavJD+OCxqLjd8mrrWP42hfFx5Z8G89jlvQ2Bv20Ocfh701eanw==
X-Received: by 2002:ac8:5704:0:b0:42b:e3f8:59b1 with SMTP id
 4-20020ac85704000000b0042be3f859b1mr169159qtw.7.1706656934789; 
 Tue, 30 Jan 2024 15:22:14 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 fe3-20020a05622a4d4300b0042a25f3950esm5112769qtb.75.2024.01.30.15.22.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:22:14 -0800 (PST)
Date: Tue, 30 Jan 2024 23:22:13 +0000
From: Paz Zcharya <pazz@chromium.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH v3 09/16] drm/i915: Fix MTL initial plane readout
Message-ID: <ZbmEpTqoAl22itF5@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-10-ville.syrjala@linux.intel.com>
 <CY5PR11MB63443E9E00C573AE06925B52F4752@CY5PR11MB6344.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY5PR11MB63443E9E00C573AE06925B52F4752@CY5PR11MB6344.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 22, 2024 at 03:09:23PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Tuesday, January 16, 2024 1:26 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH v3 09/16] drm/i915: Fix MTL initial plane readout
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > MTL stolen memory looks more like local memory, so use the (now fixed) lmem
> > path when doing the initial plane readout.
> 
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>

> > ---
> >  .../drm/i915/display/intel_plane_initial.c    | 25 +++++++++++++------
> >  1 file changed, 18 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index db594ccf0323..c72d4cacf631 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -59,7 +59,7 @@ initial_plane_vma(struct drm_i915_private *i915,
> >  		return NULL;
> > 
> >  	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> > -	if (IS_DGFX(i915)) {
> > +	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
> >  		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> >  		gen8_pte_t pte;
> > 
> > @@ -73,11 +73,20 @@ initial_plane_vma(struct drm_i915_private *i915,
> >  		}
> > 
> >  		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
> > -		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> > +
> > +		if (IS_DGFX(i915))
> > +			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> > +		else
> > +			mem = i915->mm.stolen_region;
> > +		if (!mem) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "Initial plane memory region not
> > initialized\n");
> > +			return NULL;
> > +		}
> > 
> >  		/*
> > -		 * We don't currently expect this to ever be placed in the
> > -		 * stolen portion.
> > +		 * On lmem we don't currently expect this to
> > +		 * ever be placed in the stolen portion.
> >  		 */
> >  		if (phys_base < mem->region.start || phys_base > mem-
> > >region.end) {
> >  			drm_err(&i915->drm,
> > @@ -94,11 +103,13 @@ initial_plane_vma(struct drm_i915_private *i915,
> >  	} else {
> >  		phys_base = base;
> >  		mem = i915->mm.stolen_region;
> > +		if (!mem) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "Initial plane memory region not
> > initialized\n");
> > +			return NULL;
> > +		}
> >  	}
> > 
> > -	if (!mem)
> > -		return NULL;
> > -
> >  	size = round_up(plane_config->base + plane_config->size,
> >  			mem->min_page_size);
> >  	size -= base;
> > --
> > 2.41.0
> 
