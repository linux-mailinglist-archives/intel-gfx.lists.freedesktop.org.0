Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1579993D73F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 19:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF95910E229;
	Fri, 26 Jul 2024 17:00:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="JCcEqPln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com
 [209.85.160.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6957B10E229
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 17:00:49 +0000 (UTC)
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-260fed6c380so811472fac.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 10:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1722013248; x=1722618048; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0ZyfoFUqHFgb4Q6uNgZBkKo2eOT/oDfnOEKM9WWAqMw=;
 b=JCcEqPlnUNAHvRxRj9cjeUhyqg6L5rVE+Th2Io7CoVkHFOuObX6IIqgFeOHypf5xLM
 npM7Mi1/vbuzNOYJj9W+pcnCiJJH0xtFfPkaktW1A7RvEIchU3HVzJwu4D2nyhYZcH7+
 73BgIu19kmFrphq2o7wHTiCfrlcrRH39+KiBIB/OQAi+2B+gMyjASkmLzG2rH3IhRTdU
 NsnZXkClPShpCkY+m1BiziKuoTASiOgagQYrzSNZvWp2jXMdSM6P2s+J0ki0GnokaQPJ
 s3xIfMplm4JYRUGMS4w2cE/GtLIt0yAUubNV63dFbWgNu1LldDJAuS8uOoDcP9fVZpXW
 CARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722013248; x=1722618048;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0ZyfoFUqHFgb4Q6uNgZBkKo2eOT/oDfnOEKM9WWAqMw=;
 b=j60jKw+/GPyKLpsgyEG6RtxaT9vFgFBkSOfU1OCpuOV2gEGlznF/mk0nAyaTlqQ0rj
 yxoMsB2b4YhPjICCMhQ/z+fcJNj0Ur3ruMYJo1XEK+qt3EITm/j/z4if06ZIw4Q9UfWv
 bb1ByrPte5eScK8n1QPiwA971a+kq07Q2JNPI/R9lHvgq6K/FN7m6h9CZXHi1bt3Qfa9
 U5BKUoRf2Flhyu79k3ETXegsbaslL9iiJBnVbAfBgAVSz0hFJULFhQGpQfg7MKhnLSxq
 wxHGb1iSr4epTpg5egdrqYTHJacE7jZIrtRrc5RUY/TultgSbs+qbXEFUE11edof6Adw
 kpCA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPpROHMqCejCfBZN/TqVINip3VHeOk7NcysMTERB+bcZJdujaEpJdZDzYQF+1PMmE7HuaJHcC8xzxkJjRnS1JHye9Q3Fsveq7Bismpq0pn
X-Gm-Message-State: AOJu0YzypDCBqRWDPWXn4yJ5KlFtE9SQOYoKayv2q5O950HD8bIVO6/+
 mef+jno/m5uj8sQ3JPEbOR7s43RWrV7brvuDkUknvA2cte4m6MWcEJKFQ4Ssnus=
X-Google-Smtp-Source: AGHT+IFMDls/Rcz3ZXF+zL0TW01mZRr8aHUHLvN0alwPT2RIXkZVCLmsO2XVhDtg0FZHifUwtzhsNw==
X-Received: by 2002:a05:6870:e391:b0:260:f50e:9242 with SMTP id
 586e51a60fabf-267d4f5806amr456543fac.41.1722013248259; 
 Fri, 26 Jul 2024 10:00:48 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:928f:fdbe:c604:7b3f])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-265771e4627sm731536fac.36.2024.07.26.10.00.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jul 2024 10:00:47 -0700 (PDT)
Date: Fri, 26 Jul 2024 12:00:45 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
Message-ID: <d791fb20-b90b-417a-a3f0-092c27ed8790@suswa.mountain>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <401a092f-f431-474d-82c4-48442b3c70e1@ursulin.net>
 <a8d2b873-fc98-4f14-9c64-c0bcc097956b@suswa.mountain>
 <354eb902-f03a-4046-a957-b41d630b9485@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <354eb902-f03a-4046-a957-b41d630b9485@ursulin.net>
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

On Fri, Jul 26, 2024 at 09:17:20AM +0100, Tvrtko Ursulin wrote:
> 
> On 25/07/2024 16:58, Dan Carpenter wrote:
> > On Thu, Jul 25, 2024 at 08:48:35AM +0100, Tvrtko Ursulin wrote:
> > > 
> > > Hi,
> > > 
> > > On 12/07/2024 22:41, Jonathan Cavitt wrote:
> > > > Prevent a NULL pointer access in intel_memory_regions_hw_probe.
> > > 
> > > For future reference please include some impact assessment in patches tagged
> > > as fixes. Makes maintainers job, and even anyone's who tries to backport
> > > stuff to stable at some future date, much easier if it is known how
> > > important is the fix and in what circumstances can the problem it is fixing
> > > trigger.
> > > 
> > 
> > As someone doing backport work, I think this patch is fine.  Everyone
> > knows the impact of a NULL dereference in probe().
> > 
> > I guess with patches that add NULL dereferences, the trick is
> > understanding when people are adding NULL checks to make a static
> > checker happy or when it's a real bug.  But the fault lies with the
> > people adding NULL checks just to make the tools happy.  Some of these
> > pointless NULL checks end up in stable, but it's fine, extra NULL checks
> > never hurt anyone.  If the maintainer wants to be extra safe by adding
> > NULL checks then who are we to say otherwise.
> > 
> > In other words normal patches shouldn't have to say. "I'm not lying" at
> > the end.  It should be the pointless patches which say, "I'm doing a
> > pointless thing.  Don't bother backporting."
> > 
> > Most stable patch backports are done automatically and people have
> > various tools and scripts to do that.  If the tools don't handle this
> > patch automatically then they are defective.
> 
> Right, and every few releases maintainers and authors get a bunch of emails
> for patches which did not apply to some stable tree.
> 

I believe these emails are only sent for commits that are tagged for
stable.  For AUTOSEL patches, the backporting is done on a best effort
basis.  On the other hand, hopefully this patch would have been tagged
for stable if we hadn't fixed the bug so quickly.

> In which case someone has to do manual work and then it is good to know how
> important it is to backport something. For cases when it is not trivial. It
> does not apply to this patch, but as a _best practice_ it is good if the
> commit message explains the impacted platforms and scenarios.
> 
> In this case I can follow the Fixes: tag and see the fix that this patches
> fixes is only about ATS-M. Which if it was a more complicated patch might be
> a reason to not need bother backporting past some kernel version where
> platform X wasn't even supported.
> 
> Therefore I think my point is that best practice is to include this the
> commit text, so any future maintainer/backporter does not have to re-do
> detective work, stands.

This is a really elaborate hypothetical.  Are there kernels which are
affected by this bug but don't support ATS-M?

regards,
dan carpenter
