Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 010C637AA62
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 17:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11BAE6EA59;
	Tue, 11 May 2021 15:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A3406EA5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 15:13:58 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id di13so23319351edb.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 08:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=47IMmsVPu4iAMpkkKngyoJdTSJvZ62kL9vHez5asz58=;
 b=lHPwKjpfFGCzkb+kFlEddo9W8ljl1q8AEx5CyfM7vjminOGhAB+yJe+KTcNrTISXHc
 QAFiKV7C9TO/22InYvykvJFTeBNo/mtdXW18S0GxROOz31RZJsYknQE85dtipGvbxVsz
 USItBn8D1MDULxEBPSlM28H/UOdevWUgW7kbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=47IMmsVPu4iAMpkkKngyoJdTSJvZ62kL9vHez5asz58=;
 b=PWiCPeU0msiiP4v64ZbAMY5qF/qQb2wEeFNbyWfVSkRhgp5QC6U3YMK8DvzCXQt567
 FyJ6v9ST8vgV45qsETSOeDBgiX5afpNFPPu2zsT9z8J0FX5f45VusKKQSRwXF11Kwwy5
 IXTErQSoFJYJ+3HjBkiCRc9wZywuc93OulRH5NOPP1UpeEaGKQ6sS4/5a19EstkCMvqe
 be6NAUWGyML6Gq4pfZabfPOJre6NI9lH18b++b3hmsc7kA5pciBENixolp2pcAs6ShNp
 FnTwXJPK8NIfs6ggNaXU8rL768+mW6qWHQMSk216kQLLiACD4QQ51KBCoHbKI2Lmvysm
 qWNw==
X-Gm-Message-State: AOAM531senUzbbVib5JDSmEJp5PnxhJNdPVGI4loOk4wwydUw6bVDXpQ
 Wsidc5ebcBci4zGLOXfljTrZjg==
X-Google-Smtp-Source: ABdhPJxMEC/mgDAlDrKjQuvkAjKxJ5Ot0U4bf8M9d68lukUgVjo1FSmvOx9scNl7sna1zyFdWZKKhw==
X-Received: by 2002:aa7:db95:: with SMTP id u21mr36877803edt.152.1620746036712; 
 Tue, 11 May 2021 08:13:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b17sm14578466edr.80.2021.05.11.08.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 May 2021 08:13:56 -0700 (PDT)
Date: Tue, 11 May 2021 17:13:54 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YJqfMl8vgftwnoR1@phenom.ffwll.local>
References: <20210506173049.72503-1-matthew.brost@intel.com>
 <20210506173049.72503-6-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506173049.72503-6-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [RFC PATCH 5/5] drm/i915: Update execbuf IOCTL to
 accept N BBs
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 carl.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 06, 2021 at 10:30:49AM -0700, Matthew Brost wrote:
> Add I915_EXEC_NUMBER_BB_* to drm_i915_gem_execbuffer2.flags which allows
> submitting N BBs per IOCTL.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Tony Ye <tony.ye@intel.com>
> CC: Carl Zhang <carl.zhang@intel.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

I dropped my big question on the previous patch already, I'll check this
out again when it's all squashed into the parallel extension patch so we
have everything in one commit.
-Daniel

> ---
>  include/uapi/drm/i915_drm.h | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 0175b12b33b8..d3072cad4a7e 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1291,7 +1291,26 @@ struct drm_i915_gem_execbuffer2 {
>   */
>  #define I915_EXEC_USE_EXTENSIONS	(1 << 21)
>  
> -#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_USE_EXTENSIONS << 1))
> +/*
> + * Number of BB in execbuf2 IOCTL - 1, used to submit more than BB in a single
> + * execbuf2 IOCTL.
> + *
> + * Return -EINVAL if more than 1 BB (value 0) is specified if
> + * I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT hasn't been called on the gem
> + * context first. Also returns -EINVAL if gem context has been setup with
> + * I915_PARALLEL_NO_PREEMPT_MID_BATCH and the number BBs not equal to the total
> + * number hardware contexts in the gem context.
> + */
> +#define I915_EXEC_NUMBER_BB_LSB		(22)
> +#define I915_EXEC_NUMBER_BB_MASK	(0x3f << I915_EXEC_NUMBER_BB_LSB)
> +#define I915_EXEC_NUMBER_BB_MSB		(27)
> +#define i915_execbuffer2_set_number_bb(eb2, num_bb) \
> +	(eb2).flags = ((eb2).flags & ~I915_EXEC_NUMBER_BB_MASK) | \
> +	(((num_bb - 1) << I915_EXEC_NUMBER_BB_LSB) & I915_EXEC_NUMBER_BB_MASK)
> +#define i915_execbuffer2_get_number_bb(eb2) \
> +	((((eb2).flags & I915_EXEC_NUMBER_BB_MASK) >> I915_EXEC_NUMBER_BB_LSB) + 1)
> +
> +#define __I915_EXEC_UNKNOWN_FLAGS (-(1 << (I915_EXEC_NUMBER_BB_MSB + 1)))
>  
>  #define I915_EXEC_CONTEXT_ID_MASK	(0xffffffff)
>  #define i915_execbuffer2_set_context_id(eb2, context) \
> -- 
> 2.28.0
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
