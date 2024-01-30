Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC7A843116
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:22:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACD61136FB;
	Tue, 30 Jan 2024 23:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9220E10E302
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:22:24 +0000 (UTC)
Received: by mail-qk1-f173.google.com with SMTP id
 af79cd13be357-783da26489aso363375685a.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656883; x=1707261683;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=u/6LcELw+E+WS67VU1PewkltIGZ9YzF/uIBqQxoRvAw=;
 b=PdJLVMh/PwVWwhWXSyRYqV3Rfm2uljSVeLf5B7qV1on/s+AkCTsa3HWUYzRPJgl9mf
 tA2RByVIBsBQJ1pqFgAGkczaBOsQzYcqhp5WqbhLVMiJG3igS3jEolPQjTP+pngZYf0+
 S9pwgghYx1Vam2JsE2MS5p6yAFjW97yFIBL3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656883; x=1707261683;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=u/6LcELw+E+WS67VU1PewkltIGZ9YzF/uIBqQxoRvAw=;
 b=QUwhfRveEOJJTIeaCXCEontHiDbkDOWZnfa2bQzbKD3ZGO/TMHxyLY6DVXabkh7z6c
 PSDYGxsrXCfgUHCFOr51yM/ZMdXUuHWuvvEVS5smccXA2Gs7gVNYrgelSfDhCf6+RUzX
 pp5XtqyyI0cEF2//g3cdqbDdBAfaVczaceKse3a81jZVVcu8gYxJTzaPFT0t+EjxVl9P
 272ANjWkf7PVT5+BC3460Jh8uv3uHDWEHrB/TQdZBdIj+cP2QFR+iheLC1faq88rWGG5
 IABdpz1OtSEqIuQUKQPMCE5IKuH+Eo3QWhEvpXmVIGVgi49NeobRT6+XhMyN6s7olRAH
 jUbg==
X-Gm-Message-State: AOJu0YwmQEqFyjmxVuOukSUEB06vdbHe7To6O8OqvkOAQTabzmzebdGR
 Q5D/Ll6o2RTZvJSYHwelYL1wVIVXBYqpPMxTZSTepAH5evZS5f6KeS9AFCUq3Q==
X-Google-Smtp-Source: AGHT+IHbBtgoAz47YYuNttKtvha354G2Gy/RWUteAl5TJhI0kBeOE4z+d+vLAFcm32cIDJcqGyxBNA==
X-Received: by 2002:a05:620a:7e6:b0:783:33a1:f4ec with SMTP id
 k6-20020a05620a07e600b0078333a1f4ecmr7590097qkk.76.1706656883549; 
 Tue, 30 Jan 2024 15:21:23 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 z2-20020ae9c102000000b00783fb468e7bsm2379211qki.44.2024.01.30.15.21.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:21:23 -0800 (PST)
Date: Tue, 30 Jan 2024 23:21:22 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Subject: Re: [PATCH v3 07/16] drm/i915: Fix PTE decode during initial plane
 readout
Message-ID: <ZbmEct-QFy4bbXO_@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-8-ville.syrjala@linux.intel.com>
 <23cb3eab-6242-4205-ad1c-960776e34ced@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <23cb3eab-6242-4205-ad1c-960776e34ced@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 11:46:13AM +0100, Nirmoy Das wrote:
> 
> On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > When multiple pipes are enabled by the BIOS we try to read out each
> > in turn. But we do the readout for the second only after the inherited
> > vma for the first has been rebound into its original place (and thus
> > the PTEs have been rewritten). Unlike the BIOS we set some high caching
> > bits in the PTE on MTL which confuses the readout for the second plane.
> > Filter out the non-address bits from the PTE value appropriately to
> > fix this.
> > 
> > I suppose it might also be possible that the BIOS would already set
> > some caching bits as well, in which case we'd run into this same
> > issue already for the first plane.
> > 
> > TODO:
> > - should abstract the PTE decoding to avoid details leaking all over
> > - should probably do the readout for all the planes before
> >    we touch anything (including the PTEs) so that we truly read
> >    out the BIOS state
> > 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>

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
> >   drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index a55c09cbd0e4..ffc92b18fcf5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -72,7 +72,7 @@ initial_plane_vma(struct drm_i915_private *i915,
> >   			return NULL;
> >   		}
> > -		phys_base = pte & I915_GTT_PAGE_MASK;
> > +		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
> >   		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> >   		/*
