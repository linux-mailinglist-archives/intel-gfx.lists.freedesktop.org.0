Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 874673E477F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 16:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5177B890DB;
	Mon,  9 Aug 2021 14:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 612FB890DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 14:27:05 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 w21-20020a7bc1150000b02902e69ba66ce6so134452wmi.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 07:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MVrOtXk/P3yDMQyhfr50aYsXg4faYJdhQBNWKhYb1Lc=;
 b=UJx6sbRYE5e0hgMlymoqa8i3mu8F1w4D3p8vQ6/X3kTfNu4Dhywr7V7zmzBrjkXbFa
 1RrYVi/lPql8bXX5Y9bCfxXiiBQQlhxLkUau0+lvYPMcoQ0Tnm5ncwF3ScTjLKPt5LS5
 /BCNzbRfoYYOM4tMtOJmTxqx6Dr2fxCtKVwdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MVrOtXk/P3yDMQyhfr50aYsXg4faYJdhQBNWKhYb1Lc=;
 b=oTgUuh4DoEdaRyzSxK9Kwpaucfcy1eqBhZbIWs+WGKnzG0L+E4vCsdvXJ83R2ivRnO
 QOWUm9I63LOGVicxGhiRMnesWFklyTJvOOvmRPyUL3CtWvB7emy0s6PI7+R4+abYJ+xV
 um4+2aWbMfMTVNQO1fzww0NksOPAQKQHrmM5fuBIVmCliKnO6j5nmA0FwMbTiwzgOvy3
 jGQOOQnKkfADXBF/tOZGemK/OI9h79aCWCRkZ8KKi7IWg2nhf5skfHD67mZHoS/unw7u
 NA6gpiIo2/VCfbP0BVTTfcKrD20oUZ5MyXhtA7qIVCv+4ynVTUBSKL/hLUn30F2wmKZC
 POMQ==
X-Gm-Message-State: AOAM530J1SKEtUtPeuMi3KffEraAIDnVon+kQB/h3sKx7ZP06FUrg/kC
 VYR1JodIXEIoeFEphHpgI+umWA==
X-Google-Smtp-Source: ABdhPJxQRbuIT3OoKJpc3j+O8i7fXK68Jj3DlS+aWN1c0l8o+XNmBuiRnX6cYn+b0klxew4vz2DbJg==
X-Received: by 2002:a05:600c:3b08:: with SMTP id
 m8mr34315149wms.84.1628519223992; 
 Mon, 09 Aug 2021 07:27:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f17sm23395679wrt.18.2021.08.09.07.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 07:27:03 -0700 (PDT)
Date: Mon, 9 Aug 2021 16:27:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YRE7NTxl0RIY7EbG@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-12-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210803222943.27686-12-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 11/46] drm/i915/guc: Don't call
 switch_to_kernel_context with GuC submission
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

On Tue, Aug 03, 2021 at 03:29:08PM -0700, Matthew Brost wrote:
> Calling switch_to_kernel_context isn't needed if the engine PM reference
> is taken while all contexts are pinned. By not calling
> switch_to_kernel_context we save on issuing a request to the engine.
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index 1f07ac4e0672..58099de6bf07 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -162,6 +162,10 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
>  	unsigned long flags;
>  	bool result = true;
>  
> +	/* No need to switch_to_kernel_context if GuC submission */

Maybe whack a big FIXME on here that we should unravel this properly.
Currently the execlist backend assumptions are leaked all over the place,
leading to stuff like this. Which means extremely fragile code.

I currently don't have a great idea on how exactly we should do that, but
oh well.

btw just in case we ever want to make guc lrc properly evictable (which as
the og use-case for this function, way, way back), would we need to fully
unregister them from guc? At least I'm assuming there's no other trick
like the below one.

Another aside: How does the perf/OA patching work on GuC?

Anyway, patch looks legit:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


> +	if (intel_engine_uses_guc(engine))
> +		return true;
> +
>  	/* GPU is pointing to the void, as good as in the kernel context. */
>  	if (intel_gt_is_wedged(engine->gt))
>  		return true;
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
