Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED29843115
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:22:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B3CB11370A;
	Tue, 30 Jan 2024 23:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F07B113709
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:22:49 +0000 (UTC)
Received: by mail-qk1-f170.google.com with SMTP id
 af79cd13be357-783f49811b2so205923785a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656908; x=1707261708;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=+V8F7ULGyX7Da7/zLgv4A+I7IuUlQ1BuhC20aEs826I=;
 b=UjfNSlQH/EBPKwvNTmkhSlBqzBzTpc0keaDDXL/kspMjRuW3jB3jtH3cIpGdkzzNT4
 2QbxmQR6205OJBOc78iu2cemKad0V/69JTC/JOzkQ8GPsNS3LfpAcpzU9P/ctztpxa8K
 A4XGJlLIv457c3K9MMyf9+FlNXwCA36MAngjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656908; x=1707261708;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+V8F7ULGyX7Da7/zLgv4A+I7IuUlQ1BuhC20aEs826I=;
 b=wEa/UuVvo6so5ROrMIZV8JkPeE2hb3bArqYY08ntrUyVr+rs+tc+BeP8awR8GLrbCd
 MP901lI7sSBaVSX4YJoA+SNHO2RoazKqBhyAkJJC8v2viSLWKid9tXf5Sr3PBh8qiXaF
 ROdhht0qqQw+rzXGTlpjyrutFrBhPA0Gmg5z6Vp2IPe15YOswR9pYydekNQYs8cGYbdb
 al8SRnATfRNP8qoizoiXE9VbpD2apeIKwLug7AlIuFdhojTVyEEUFgQBJj/zcJGJHP+S
 1bySXA/na8GD1juiPka8811t/isj949oPtMTr8vPblTdINY4DKX3X0zeLkmmD9NjYBnc
 C/Og==
X-Gm-Message-State: AOJu0Ywzwq7qDKXmRFAUvhXLlVDZCsz+qWAT5vn5VMk2goe38FvoJHc6
 oKR/Dgi9PIkp3hbPOTC85uKC014OElskaBmh2w72pqluokwBe5Gl8vIOJjmEAg==
X-Google-Smtp-Source: AGHT+IEmohPKv2ZQvIZUzNCKr0cSEKFJ/1/YhOifhHdQf9hBUnoCWpJa2VXjb1qcHynbF6lxxGSYeQ==
X-Received: by 2002:a05:620a:1279:b0:783:e3d6:d872 with SMTP id
 b25-20020a05620a127900b00783e3d6d872mr7843814qkl.36.1706656908480; 
 Tue, 30 Jan 2024 15:21:48 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 g9-20020a37e209000000b0078400fab7c6sm1855955qki.132.2024.01.30.15.21.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:21:48 -0800 (PST)
Date: Tue, 30 Jan 2024 23:21:47 +0000
From: Paz Zcharya <pazz@chromium.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH v3 08/16] drm/i915: Fix region start during initial plane
 readout
Message-ID: <ZbmEi0VIWpwvF8yT@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-9-ville.syrjala@linux.intel.com>
 <CY5PR11MB63449EBF437E0F6ECD1D31CCF4752@CY5PR11MB6344.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY5PR11MB63449EBF437E0F6ECD1D31CCF4752@CY5PR11MB6344.namprd11.prod.outlook.com>
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

On Mon, Jan 22, 2024 at 03:07:52PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Tuesday, January 16, 2024 1:26 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH v3 08/16] drm/i915: Fix region start during initial plane readout
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On MTL the stolen region starts at offset 8MiB from the start of LMEMBAR. The
> > dma addresses are thus also offset by 8MiB. However the mm_node/etc. is zero
> > based, and i915_pages_create_for_stolen() will add the appropriate region.start
> > into the sg dma address. So when we do the readout we need to convert the dma
> > address read from the PTE to be zero based as well.
> > 
> > Note that currently we don't take this path on MTL, but we should and thus this
> > needs to be fixed. For lmem this works correctly already as the lmem
> > region.start==0.
> > 
> > While at it let's also make sure the address points to somewhere within the
> > memory region. We don't need to check the size as
> > i915_gem_object_create_region_at() should later fail if the object size exceeds
> > the region size.
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
> >  drivers/gpu/drm/i915/display/intel_plane_initial.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index ffc92b18fcf5..db594ccf0323 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -79,16 +79,18 @@ initial_plane_vma(struct drm_i915_private *i915,
> >  		 * We don't currently expect this to ever be placed in the
> >  		 * stolen portion.
> >  		 */
> > -		if (phys_base >= resource_size(&mem->region)) {
> > +		if (phys_base < mem->region.start || phys_base > mem-
> > >region.end) {
> >  			drm_err(&i915->drm,
> > -				"Initial plane programming using invalid range,
> > phys_base=%pa\n",
> > -				&phys_base);
> > +				"Initial plane programming using invalid range,
> > phys_base=%pa (%s [%pa-%pa])\n",
> > +				&phys_base, mem->region.name, &mem-
> > >region.start,
> > +&mem->region.end);
> >  			return NULL;
> >  		}
> > 
> >  		drm_dbg(&i915->drm,
> >  			"Using phys_base=%pa, based on initial plane
> > programming\n",
> >  			&phys_base);
> > +
> > +		phys_base -= mem->region.start;
> >  	} else {
> >  		phys_base = base;
> >  		mem = i915->mm.stolen_region;
> > --
> > 2.41.0
> 
