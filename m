Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B65933FAF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 17:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E10810E2A4;
	Wed, 17 Jul 2024 15:29:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="y8FYCJnm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CCC10E2A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 15:29:46 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id
 46e09a7af769-703ba2477bdso197142a34.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2024 08:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1721230186; x=1721834986; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hOYY74QbsYNdqWMQem1wh3OsYTqaHWjT9lTHPkUnA1g=;
 b=y8FYCJnmZAtyob0JShsCOmj3HKbdGl4opSpLbInckWNeGdCHK58ZQO/j/YSOeyTqjl
 qoyCAu+zSzy23bAwbR4T2QTM9FrMK5C2Cxswt9dw0UpbKnuVLutZ0LWIunZnlnrYUfOe
 cDfnuJ/ho0vq1L8X+aytOtz5lNfnjSWIKWxtbjMO1gxgdkr/rnj1Oq9MXfi5weM6A8m6
 KVk987F1Uf2WrcaQzAqGMNNnGNZh2tRydsP6ILpvv+SIJKmjlEwlsz6kMSQfvImIZf6h
 +00rrQK9mKmY0FVXMS9CZ2IEZZ+7cIMm1JlcXt2yx9Il6D3v7cN+SrpLgs5jdXQpClNF
 W9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721230186; x=1721834986;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hOYY74QbsYNdqWMQem1wh3OsYTqaHWjT9lTHPkUnA1g=;
 b=AQHkeHC0U98UWOA6RB1PeoEmPuu1AusSPQtVtz+MEgbpsiQH3cKjvqoseJ882hff0Y
 dwzroIpaELBCEI6I7yF0SMS0Gps1no0mCxzSyqer+6q/k7Ud4YyBeId89YijXveTJKWn
 Rglkgg3ckqbvKCOXV7NGRlwyNXk/BO767tB463eG01xvYJ/cjNtD2dCKqXoL4rYmnhNu
 qoalwei453HhQhMPnl/i30PDBQs4ljcWTALWYtouitVPUO56FBY9KsHCsk9i9VK0UNgR
 oCSXyrIAOegNAmGLtDqP1bGgc54cewkG/zShCZuH8R5F6iZHSgsdGUFxrwuCC7CQjkJ3
 allg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUSuxXh64h0OsrVMItEIGiyDrv2i1EHiKP5RL2fZnRl7k21SpRYCumGpndLFv/JFnwoMyfNSDjSilxznMsL99uSvTZTUZGcKp5rLUWr6Ufj
X-Gm-Message-State: AOJu0YzDSsoKSnFuZz/DkmQ1JTJYk7MZRqIhrp3MYKW4Ol8MFJCFV05M
 XUtZ4ExV9esYl6yHIrSl9rHVShdax5lDlHjC0N69E2Rwcj1CQLn1u3dRZHDfv4c=
X-Google-Smtp-Source: AGHT+IFOadgA0rIjY2DFfOxNDphqFhDBk0dee1wXItNvXyGrvLtR8RinUXJoZvvWw/gbIw6+VVtQsQ==
X-Received: by 2002:a05:6830:61ce:b0:704:4d83:8543 with SMTP id
 46e09a7af769-708e7856c34mr1496206a34.13.1721230186101; 
 Wed, 17 Jul 2024 08:29:46 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:f90b:a43c:39d1:be63])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-708e7900a5dsm104636a34.69.2024.07.17.08.29.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jul 2024 08:29:45 -0700 (PDT)
Date: Wed, 17 Jul 2024 10:29:44 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Cc: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
Message-ID: <8ec8103d-a827-4666-8430-b8bfda4c6fc6@suswa.mountain>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <e113ec37-3d8e-49fc-b55b-525ef481f540@linux.intel.com>
 <CH0PR11MB5444A0D640A7B0E8C32189A0E5A32@CH0PR11MB5444.namprd11.prod.outlook.com>
 <ebb48611-a250-4f68-9469-f0aa75361b58@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ebb48611-a250-4f68-9469-f0aa75361b58@linux.intel.com>
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

On Wed, Jul 17, 2024 at 05:21:38PM +0200, Nirmoy Das wrote:
> 
> On 7/17/2024 5:11 PM, Cavitt, Jonathan wrote:
> > -----Original Message-----
> > From: Nirmoy Das <nirmoy.das@linux.intel.com>
> > Sent: Wednesday, July 17, 2024 8:06 AM
> > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> > Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; dan.carpenter@linaro.org; chris.p.wilson@linux.intel.com; Andi Shyti <andi.shyti@linux.intel.com>
> > Subject: Re: [PATCH] drm/i915: Allow NULL memory region
> > > 
> > > On 7/12/2024 11:41 PM, Jonathan Cavitt wrote:
> > > > Prevent a NULL pointer access in intel_memory_regions_hw_probe.
> > > > 
> > > > Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
> > > > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > ---
> > > >    drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
> > > >    1 file changed, 4 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> > > > index 172dfa7c3588b..d40ee1b42110a 100644
> > > > --- a/drivers/gpu/drm/i915/intel_memory_region.c
> > > > +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> > > > @@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
> > > >    			goto out_cleanup;
> > > >    		}
> > > > -		mem->id = i;
> > > > -		i915->mm.regions[i] = mem;
> > > There is a check for mem just before that. You could use
> > > IS_ERR_OR_NULL(mem) instead of IS_ERR().
> > I think you're referring to the "goto out_cleanup" path?
> 
> Yes.
> 
> > 
> > mem being NULL is a valid use case, so we
> > shouldn't take the error path when it's observed.
> Not an error path if you return expected/correct value.
> 
> You could do
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 172dfa7c3588..41ef7fdfa69b 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -362,9 +362,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
> 
>                 if (IS_ERR(mem)) {
>                         err = PTR_ERR(mem);
> -                       drm_err(&i915->drm,
> -                               "Failed to setup region(%d) type=%d\n",
> -                               err, type);
> +                       if (err)
> +                               drm_err(&i915->drm,
> +                                       "Failed to setup region(%d) type=%d\n",
> +                                       err, type);
>                         goto out_cleanup;
>                 }

Obviously you intended to change the IS_ERR() to IS_ERR_OR_NULL() but
also we want to continue instead of goto out_cleanup.

> 
> PTR_ERR(NULL) should be 0 I think and could even add a info saying
> skipping setting up that reason.

Don't print stuff on the success path.

regards,
dan carpenter

