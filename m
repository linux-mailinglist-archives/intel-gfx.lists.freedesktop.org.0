Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBCE403E37
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 19:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB856E217;
	Wed,  8 Sep 2021 17:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966D26E215
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 17:13:12 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id u14so5574274ejf.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Sep 2021 10:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=94RfL+XQJazAGxoDLsJBPk4y2Cmj3BLmNWDabKgbvBo=;
 b=TfRslReoIaZtyNR/fIDuNfW/Da+aBlcZMFJ8/jUAcIzOaBjUQ9S51BuA7yLlCkCUHN
 5IZV+0gS1+GmsJRN9e+KMlb2+9a1jRNm71j0kybuMXGH6USHvFfYSg6i02nMlZH+y7cy
 VDu+QJiW0Gve+5e8j2KclF6rQHzmPc7SvMDpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=94RfL+XQJazAGxoDLsJBPk4y2Cmj3BLmNWDabKgbvBo=;
 b=hc7zsszJ6fXAFXpFglz2f6GYs+W+ggSxDiLfbs83QTInY5bXSRKL3dwlSQEQAghK+2
 uG7HWyQ76iy/+rUPybayzashPM2YCa4XpZugxx4PsNd5LDJfC3pqCD6gBx2ntM0NmEMB
 BpYpLwGBi5zdiDF/2gW2EVd699AWg3eBu0U6V7GHgrGDbEtC1dX5fJExfPtcUYgZRsVk
 LWpEd4+pRTacioUyrNbWt/J0ntQ+9xBwO5dXMRvfCjlhOB7DQABLuqan6L0nMtSeFZjW
 D59cLIOQ9/QuSSJIfxBNf61V7knZo/0oFsqlBivPbrzN+sIvShzJ6VoH/02Wjihjy/xf
 KVUA==
X-Gm-Message-State: AOAM532nEqdMhNGJnXDmK+1cINS4EJWKqe1ZECttCZTRBsFHtml7UH1A
 HH+aGGmWDLlvK36Mo89Co9G5uA==
X-Google-Smtp-Source: ABdhPJxBatGiw03lcpCbxiZWOnM2wBapIEG0A8UmwJ2+oLJ4x93tKMCbvGGv2mCJwmWmgOKYGZBisQ==
X-Received: by 2002:a17:906:314e:: with SMTP id
 e14mr932125eje.165.1631121191251; 
 Wed, 08 Sep 2021 10:13:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id qx18sm1324868ejb.75.2021.09.08.10.13.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 10:13:10 -0700 (PDT)
Date: Wed, 8 Sep 2021 19:13:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Colin King <colin.king@canonical.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <YTjvJFeMs6+Hi3IR@phenom.ffwll.local>
Mail-Followup-To: Colin King <colin.king@canonical.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210902215737.55570-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210902215737.55570-1-colin.king@canonical.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH][next] drm/i915: clean up inconsistent
 indenting
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

On Thu, Sep 02, 2021 at 10:57:37PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a statement that is indented one character too deeply,
> clean this up.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Queued to drm-intel-gt-next, thanks for patch.
-Daniel

> ---
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index de5f9c86b9a4..aeb324b701ec 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2565,7 +2565,7 @@ __execlists_context_pre_pin(struct intel_context *ce,
>  	if (!__test_and_set_bit(CONTEXT_INIT_BIT, &ce->flags)) {
>  		lrc_init_state(ce, engine, *vaddr);
>  
> -		 __i915_gem_object_flush_map(ce->state->obj, 0, engine->context_size);
> +		__i915_gem_object_flush_map(ce->state->obj, 0, engine->context_size);
>  	}
>  
>  	return 0;
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
