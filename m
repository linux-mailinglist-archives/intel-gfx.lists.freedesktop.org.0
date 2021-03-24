Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4C9347F07
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 18:14:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A4A6ECAD;
	Wed, 24 Mar 2021 17:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC746ECB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 17:14:08 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id k8so25217773wrc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 10:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XkocXCL7QPBswRAkkibCzvQhEtkd5Tq9s+ul+FYND84=;
 b=Wp+jcfx20MhEJn3kmh7DUSV/kgkRF0MjEMWhC948VQJoWEaij2Xcxxw3WsnTJu8TT3
 bvFSPuPo8ewakBvSHSxFpWuZv4lA2t0+B6trgtlBTsBfqB/ipD/+5BvYCdjGT2a1EaX6
 VpTjlQrsh7w4WGPOvZl4E1xX8kTXD7NjJncek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XkocXCL7QPBswRAkkibCzvQhEtkd5Tq9s+ul+FYND84=;
 b=k2RnU8aMUAWzHwupNDMKvpHZ3JMVxnHkqwbyk8K0WSyEU9ZkJjOLQ+Sv4EMq4T40Fz
 9SbR3Q3fKEPSBNbs6iTwxwXnleWI/0tJsQx1hspnWaGDmh4/u2SbKJO1IS0kYbG6aGtK
 TkB//QqtI8w8VWHD/uakfgdxZikS0w4d95qg1EGa/X6xva92ekXvCTT98l8wkVAH4god
 5nCLHb/wBUsfh6E7k4QCf7uYoBtu8rFhhMHFgM1TO6ftYkORvRYsNeg2MC7lGavCq8J0
 qWZEtogSz+JRdLb4KpIph6FBlaNpXpvG1k5sFB3u8FG4KVvA6B+cf5sPM+AboxVH8WN/
 Suww==
X-Gm-Message-State: AOAM533haGJkHc+q8N0HzWLmH4HGGYRa5xVGOOVabskIlwqHa8uY7j/X
 5XBtWK+PkcTy7m+mWPZebE0QX/y/z9i65z2H
X-Google-Smtp-Source: ABdhPJzmnAetJMaG5iPsgO1zf8wilfjeS8udq/5tvPoV0OF/yIsiIEKu738aGPV8dhuf/i3+JyynKw==
X-Received: by 2002:a5d:6048:: with SMTP id j8mr4783834wrt.115.1616606046872; 
 Wed, 24 Mar 2021 10:14:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x6sm3346370wmj.32.2021.03.24.10.14.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 10:14:06 -0700 (PDT)
Date: Wed, 24 Mar 2021 18:14:04 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YFtzXG813YBTCCeK@phenom.ffwll.local>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
 <20210323155059.628690-66-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323155059.628690-66-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v9 65/70] drm/i915: Fix pin_map in scheduler
 selftests
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 04:50:54PM +0100, Maarten Lankhorst wrote:
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Fixes a commit I'll drop anyway, so didn't bother with this one.
-Daniel

> ---
>  drivers/gpu/drm/i915/selftests/i915_scheduler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
> index f54bdbeaa48b..4c306e40c416 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
> @@ -645,7 +645,7 @@ static int __igt_schedule_cycle(struct drm_i915_private *i915,
>  	if (IS_ERR(obj))
>  		return PTR_ERR(obj);
>  
> -	time = i915_gem_object_pin_map(obj, I915_MAP_WC);
> +	time = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
>  	if (IS_ERR(time)) {
>  		err = PTR_ERR(time);
>  		goto out_obj;
> -- 
> 2.31.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
