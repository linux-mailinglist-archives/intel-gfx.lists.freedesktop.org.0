Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 933A1347E5C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 18:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617156EA44;
	Wed, 24 Mar 2021 17:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 404CB6EA44
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 17:00:16 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id k8so25171386wrc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 10:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nADrMUnSoa9xTz+FEYa/sGpUbXGvFmSaxGSUTCH5jzA=;
 b=DNiBsNVSkFJ3wxkMM2uXMIY6J7uhHNt/a7EtaQGlv/ipAScRDHGnMT1+C52gNnq3BY
 2kATaDvkAAOaiIpdDM9sj+CDTGGjpoD+kCi7fnipc0N99ZO2gVCjGXBecSRnfLGbDmbU
 LnOKtBJPe4/dnlJR+ZLz8t6q6boznF1ecEGBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nADrMUnSoa9xTz+FEYa/sGpUbXGvFmSaxGSUTCH5jzA=;
 b=pK8MiGvmLs84fyKeBAzo4Vcvf42n67RL1U128jPqDm/64Dy6zxqGb96wxHdPvcSiSf
 TgTCrLjVmavZwkQ+WW3LqF1C/3rLDDbwgXamjEME6WKWMbeO24KsUEgHWeYGdxBbISXu
 XrgwJAi3Ky/w73RF4/y5bHt2zoqN9/KdFTLGW19yzUEcP0jQbRq2JEkGdE+xZH/9twg5
 GSxTqXqb06QRRAWvX1wsUCK4HiuUKsQM8bG64uZRlZoF4KD1V/cI5URcKnBjmgfspyPA
 hN52A73E/qs683qDsX8YDX6AP+FvpUPtDLaSCkQSxDDQYutEoIfkoQSdhhQ//7fnMnNH
 QRqQ==
X-Gm-Message-State: AOAM531kFoDaieLbgHvyNSntWIiYKpFHTI8LRiWNdGsbFyVFiTMrzImb
 U+/oIEVMYFM2lG84PBlzE5oGoQ==
X-Google-Smtp-Source: ABdhPJwWzpN/kZp0MO2qp8YZecWC/xN/8LYEvYL1MZawfcYVzFDlI01jUai0g6ECP6ig7H7qjmlwXg==
X-Received: by 2002:a5d:4fca:: with SMTP id h10mr4765653wrw.70.1616605214868; 
 Wed, 24 Mar 2021 10:00:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o7sm4059143wrs.16.2021.03.24.10.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 10:00:14 -0700 (PDT)
Date: Wed, 24 Mar 2021 18:00:12 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YFtwHG3ZbjzhuzOZ@phenom.ffwll.local>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
 <20210323155059.628690-64-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323155059.628690-64-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v9 63/70] drm/i915: Move gt_revoke() slightly
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 04:50:52PM +0100, Maarten Lankhorst wrote:
> We get a lockdep splat when the reset mutex is held, because it can be
> taken from fence_wait. This conflicts with the mmu notifier we have,
> because we recurse between reset mutex and mmap lock -> mmu notifier.
> =

> Remove this recursion by calling revoke_mmaps before taking the lock.
> =

> The reset code still needs fixing, as taking mmap locks during reset
> is not allowed.
> =

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index 990cb4adbb9a..447f589750c2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -970,8 +970,6 @@ static int do_reset(struct intel_gt *gt, intel_engine=
_mask_t stalled_mask)
>  {
>  	int err, i;
>  =

> -	gt_revoke(gt);
> -
>  	err =3D __intel_gt_reset(gt, ALL_ENGINES);
>  	for (i =3D 0; err && i < RESET_MAX_RETRIES; i++) {
>  		msleep(10 * (i + 1));
> @@ -1026,6 +1024,9 @@ void intel_gt_reset(struct intel_gt *gt,
>  =

>  	might_sleep();
>  	GEM_BUG_ON(!test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
> +

I've added a FIXME comment here just so we don't totally forget. This will
also blow up again when we wrap the entire reset path into a dma_fence
critical section annotation (at least going forward, we can't do that on
hw that needs display reset with the current code unfortunately).

But I did look at the code which originally added this in

commit 2caffbf1176256cc4f8d4e5c3c524fc689cb9876
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Fri Feb 8 15:37:03 2019 +0000

    drm/i915: Revoke mmaps and prevent access to fence registers across res=
et

and noped right out.

I think this complexity needs to go entirely, and instead we just protect
the fence register state to make sure that after reset they are all good
again:
- add a new mutex for low level fence register state
- hold that mutex around fence register writes (really just the low level
  fence writes)
- hold it in the reset path when we restore fence registers

This means that a global reset also thrashes mmaps, but it's a global
reset we're talking about here, everything is thrash anyway. Plus/minus
fenced gtt mmaps really doesn't change the tally.

The real solution is per-engine reset here, and making sure that works as
well as absolutely possible.

Maarten, can you pls take care of this in a follow-up? We have to do this
anyway when we roll out more dma_fence annotations.

Thanks, Daniel

> +	gt_revoke(gt);
> +
>  	mutex_lock(&gt->reset.mutex);
>  =

>  	/* Clear any previous failed attempts at recovery. Time to try again. */
> -- =

> 2.31.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
