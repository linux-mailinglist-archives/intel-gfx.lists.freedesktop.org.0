Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 377993E48F6
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 17:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20FAE8984D;
	Mon,  9 Aug 2021 15:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A91E89804
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 15:36:16 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id h13so22025944wrp.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 08:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fdoXuHuVIB3SEqhDkl4mX/S1KqqfY2mnHrL57EwTK6w=;
 b=WwDDErn4ed+/8YWz8B4R61IMRvo+DbB7q9DB0WatRJ1DKRo4vLwH2E9fXcZ+nWnrAa
 wRaEzffewZA+u9G4XktblHbbg8/aX4k5hH4Mkr3v3suQssYgV6IfH5Z3KQfnDGHFOteQ
 CW3FMdKvmY6tVJPiUB4tsbH+yEj8iG7pLfKOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fdoXuHuVIB3SEqhDkl4mX/S1KqqfY2mnHrL57EwTK6w=;
 b=blbsV2FsxEboW7G1+4kJfRrEtWRX/J+sVCcxauHjFeXEI7LbKiS430ZlzmxX10jR+t
 JkPGJH7ZNFTosrWRnadpx/CNeRbXWvqcTn3iAWR5FtG3X4++I5S4FYQS1iMjJMcdstTd
 0RtNOKZKtRDuU+J4EblPOcVer/+0zMxUSL6vc7g3/cjoyXbCMKN1GH1kOrmWHCA7E945
 2DdtTIVL0Eey1U3u+28V3PC8TZLoW4+LwSynGL1lnTNSqKzeyfEL8m8jdUINXSgvvUYD
 JWZsz8q6O4XOr9m+QaKeiClaM3Kv1rCS1vuiQZn7CJlOWDJUV5imcJgvowjgDoNB78fy
 DlcA==
X-Gm-Message-State: AOAM53033jUZojU/ZYov6vG+Uw+EAO89oEzjZAZ/jRe/SfH/RFVZKiI8
 X7Wh8ggTqmb/1CJTgUYn4P9HlQPiwD5w2Q==
X-Google-Smtp-Source: ABdhPJzO0oBCcpBVe6X5op/XQyOGEKVr/IW5ry56OQZOCRPkOUwgjnEEoKq6rO6L0Y/3ard6TkyxEA==
X-Received: by 2002:a5d:68cc:: with SMTP id p12mr26312342wrw.161.1628523374560; 
 Mon, 09 Aug 2021 08:36:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m39sm19962208wms.28.2021.08.09.08.36.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 08:36:14 -0700 (PDT)
Date: Mon, 9 Aug 2021 17:36:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YRFLbB2Ayzf+KDz/@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-22-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210803222943.27686-22-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 21/46] drm/i915/guc: Add
 guc_child_context_destroy
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

On Tue, Aug 03, 2021 at 03:29:18PM -0700, Matthew Brost wrote:
> Since child contexts do not own the guc_ids or GuC context registration,
> child contexts can simply be freed on destroy. Add
> guc_child_context_destroy context operation to do this.
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2d8296bcc583..850edeff9230 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2828,6 +2828,13 @@ static void destroy_worker_func(struct work_struct *w)
>  		intel_gt_pm_unpark_work_add(gt, destroy_worker);
>  }
>  
> +/* Future patches will use this function */
> +__maybe_unused

Pure bikeshed, but for something this small just squash it in with the
first user. This kinda does nothing alone.
-Daniel

> +static void guc_child_context_destroy(struct kref *kref)
> +{
> +	__guc_context_destroy(container_of(kref, struct intel_context, ref));
> +}
> +
>  static void guc_context_destroy(struct kref *kref)
>  {
>  	struct intel_context *ce = container_of(kref, typeof(*ce), ref);
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
