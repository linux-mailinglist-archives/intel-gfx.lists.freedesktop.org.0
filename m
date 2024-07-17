Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC11D933F92
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F67E10E15E;
	Wed, 17 Jul 2024 15:26:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="qo8N/G3g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE8910E15E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:25:57 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id
 46e09a7af769-70211abf4cbso231615a34.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 08:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1721229956; x=1721834756; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=e2d4cfDq4F4pX91/h+nwZjASDh6ZZ8NGMkrb9ut3S5Y=;
 b=qo8N/G3gVG9qHy+cdltyQ9HTj8cbnsUAfXNWFmptY4q/uCQ02klDaXjtYBMwhcotSn
 4QG9dBMJXlTrJFJO6tRK3ithCTT2lEirlqEjOgw2w6wWDnToMuzNT0gTya/8GnzK8LUo
 n/T6iga+SC/cZ8vr2pggKlqkBKoaSgQptTkzfG2WqC83aGpnU49WafFOIafF+x8+D13B
 2yO50kNPwnLsL3w5RowM2LqY41RVRYyv/ZW+svhv4NGzt2ZXkkROfm7UsdTvwqVBQ9ND
 naRHtOgP1ZkoFDCDQwXQL0UXLRzpyduMaaOKjY2tisMpdj78+DKkgxwDTMPb9MOn2IAV
 YYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721229956; x=1721834756;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=e2d4cfDq4F4pX91/h+nwZjASDh6ZZ8NGMkrb9ut3S5Y=;
 b=ID4acPNn5GhVEairKWmP5QG6k87K56gtjPIcfrEHT7yfH7wCTfYBfEJrb5yrBCO6z3
 Ax20EBOWdKSIjKfd4fAYe2bg0TQ4SwmbkT3yaB5xqz9R/Ic3ZBo9/bj5JU3D6okMWK+Y
 o459vuV6R+ZxyHWkq3Lw7Z2iI8RSW+qOR77RFoz2blTcKUKZOP5wmDRpQNW25iqpRzG+
 gtFE0pljpxfWumVxgnHjIOGh7OZ5u390x8mDvHd02YVCUzuoTAgxFP5m4bOsuak61wMT
 mOuoH+hTWQwL0vR34Dnum9t7/CCYSCxY7XPiAOpBA/5doyvdM2t9otPkZCpEMM2dnFLa
 1pfg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXaD2OoGdDzZyWBKL1xKk/RcXXsFLfV/bu5YJzMhjp2TBSLOyXGkoj87LspfB6mHzhgZYjxGCQsgVIOQElk4Rmw92XTGmzQ8BBm3FVPbvno
X-Gm-Message-State: AOJu0YxXGWmv6kRzbuhVTXvtWo5vElJiPkU00UeDbTCCKosyvwaE0uKx
 kgVmaGcmvuwnOdVgnG2xHrhtLAWcFoAGREO6BAZbNBKN6zY1IEwFNWzZxxDD+18=
X-Google-Smtp-Source: AGHT+IE6Wwjx5egkj4/x4Bumi0LHlvx9qo0VL/gfH5m9LomAz4m3dvjHFkFSmCCPVoc8Pw/kk4qH4A==
X-Received: by 2002:a05:6830:650e:b0:703:6e98:f06c with SMTP id
 46e09a7af769-708e3776608mr2285563a34.12.1721229956151; 
 Wed, 17 Jul 2024 08:25:56 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:f90b:a43c:39d1:be63])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-708e7817eaesm107614a34.26.2024.07.17.08.25.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jul 2024 08:25:55 -0700 (PDT)
Date: Wed, 17 Jul 2024 10:25:53 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
Message-ID: <642adf26-af1c-4c2a-8845-f50dc269a4d5@suswa.mountain>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
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

On Wed, Jul 17, 2024 at 05:05:55PM +0200, Nirmoy Das wrote:
> 
> On 7/12/2024 11:41 PM, Jonathan Cavitt wrote:
> > Prevent a NULL pointer access in intel_memory_regions_hw_probe.
> > 
> > Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
> > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > ---
> >   drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
> >   1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> > index 172dfa7c3588b..d40ee1b42110a 100644
> > --- a/drivers/gpu/drm/i915/intel_memory_region.c
> > +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> > @@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
> >   			goto out_cleanup;
> >   		}
> > -		mem->id = i;
> > -		i915->mm.regions[i] = mem;
> 
> There is a check for mem just before that. You could use IS_ERR_OR_NULL(mem)
> instead of IS_ERR().

An error pointer return is normally completely different from a NULL
return in how it's handled.  Here NULL is a special kind of success.  I
wrote a blog about this.

https://staticthinking.wordpress.com/2022/08/01/mixing-error-pointers-and-null/

regards,
dan carpenter
