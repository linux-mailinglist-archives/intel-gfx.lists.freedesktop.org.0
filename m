Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 523E839B4F2
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 10:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCAF6E43F;
	Fri,  4 Jun 2021 08:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE97B6E43F
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 08:35:36 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 h5-20020a05600c3505b029019f0654f6f1so6866055wmq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 01:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KHMr4LuoqvmRdKeYz/bgGpVc+vcizgfESRbqKGajiqQ=;
 b=Q5Uf8A2cotksmpgTBN+Mxv1GbF6fJG+44mD/rzI8xo6itPUqfBtgKAw/Wypkc6J0Ut
 opS/5slPYFg2w1saUPfjIekko5SOXHxfa7kHycF1DENo0Hl+DDJksfZ3wwqF7vfDlxVo
 yhRjtCl7PsigZ5lioYMHU9k1yh1/aSXKasRLA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KHMr4LuoqvmRdKeYz/bgGpVc+vcizgfESRbqKGajiqQ=;
 b=ZNJcSy1zSogKtc7nBqN8S5u5vw2CDxMu2/aXmMaVoVf2YmsXb6T+l+i7AFCsgFTveP
 yxVMPl6R85EZKwzuJsyxgzIvzMPcuBd1UVBcH1ucZJNLpLLax+SjluMjb2bxConrVVdD
 yNaUmcsoKOIEkMsrqq6yPO2bDn4FlTtsTTwTvJpe4VDksME8OEGsfRyNN40ZNFOIxiHB
 xxfjcGcIh6KVjOzTQfrlgAvoTrpcW3Wr+sJc6xETg4LJ8D2rFoBAGJagU/pMF4upepnz
 VQH86MFbYe4ObnitTr5Gi/jZGc8lHIGkZk6+3I4pL37jOEEwg+X1bO6Tmy23v33F64xb
 p5hQ==
X-Gm-Message-State: AOAM533zlATyoCF1MoXK7WmbhXmVcMqHXjIJYVRQhUhgMXDW/MO2qwVv
 CY5sVyJxdC/x8w6N4g3TasVRaA==
X-Google-Smtp-Source: ABdhPJzx5Kt7Dd7V0QxwODrI5Ae+j/U3XKM11b04/yiOB8lPawR7YIT4Ky12c4XyZ35ag1hS0k/iAQ==
X-Received: by 2002:a7b:c20d:: with SMTP id x13mr2546633wmi.49.1622795735530; 
 Fri, 04 Jun 2021 01:35:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o6sm6664452wre.73.2021.06.04.01.35.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 01:35:35 -0700 (PDT)
Date: Fri, 4 Jun 2021 10:35:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YLnl1RKGnL6ZJ1ha@phenom.ffwll.local>
References: <20210603051630.2635-1-matthew.brost@intel.com>
 <20210603051630.2635-15-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210603051630.2635-15-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 14/20] drm/i915/guc: Start protecting access
 to CTB descriptors
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 02, 2021 at 10:16:24PM -0700, Matthew Brost wrote:
> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> 
> We want to stop using guc.send_mutex while sending CTB messages
> so we have to start protecting access to CTB send descriptor.
> 
> For completeness protect also CTB receive descriptor.
> 
> Add spinlock to struct intel_guc_ct_buffer and start using it.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 14 ++++++++++++--
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  2 ++
>  2 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index cf1fb09ef766..80976fe40fbf 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -89,6 +89,8 @@ static void ct_incoming_request_worker_func(struct work_struct *w);
>   */
>  void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>  {
> +	spin_lock_init(&ct->ctbs.send.lock);
> +	spin_lock_init(&ct->ctbs.recv.lock);
>  	spin_lock_init(&ct->requests.lock);
>  	INIT_LIST_HEAD(&ct->requests.pending);
>  	INIT_LIST_HEAD(&ct->requests.incoming);
> @@ -476,17 +478,22 @@ static int ct_send(struct intel_guc_ct *ct,
>  	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
>  	GEM_BUG_ON(!response_buf && response_buf_size);
>  
> +	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> +
>  	fence = ct_get_next_fence(ct);
>  	request.fence = fence;
>  	request.status = 0;
>  	request.response_len = response_buf_size;
>  	request.response_buf = response_buf;
>  
> -	spin_lock_irqsave(&ct->requests.lock, flags);
> +	spin_lock(&ct->requests.lock);
>  	list_add_tail(&request.link, &ct->requests.pending);
> -	spin_unlock_irqrestore(&ct->requests.lock, flags);
> +	spin_unlock(&ct->requests.lock);
>  
>  	err = ct_write(ct, action, len, fence);
> +
> +	spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> +
>  	if (unlikely(err))
>  		goto unlink;
>  
> @@ -822,6 +829,7 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
>  void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>  {
>  	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
> +	unsigned long flags;
>  	int err = 0;
>  
>  	if (unlikely(!ct->enabled)) {
> @@ -830,7 +838,9 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>  	}
>  
>  	do {
> +		spin_lock_irqsave(&ct->ctbs.recv.lock, flags);
>  		err = ct_read(ct, msg);
> +		spin_unlock_irqrestore(&ct->ctbs.recv.lock, flags);
>  		if (err)
>  			break;
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index fc9486779e87..bc52dc479a14 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -27,11 +27,13 @@ struct intel_guc;
>   * record (command transport buffer descriptor) and the actual buffer which
>   * holds the commands.
>   *
> + * @lock: protects access to the commands buffer and buffer descriptor
>   * @desc: pointer to the buffer descriptor
>   * @cmds: pointer to the commands buffer
>   * @size: size of the commands buffer
>   */
>  struct intel_guc_ct_buffer {
> +	spinlock_t lock;

For struct members inline comments _much_ preferred, since then you can
make them multi-line and actually explain stuff - the header format
strictly speaking also allows multi-line, but not with nice formatting and
so encourages people to lean way too much towards brevity.
Plus it's closer where people look (for big structs).

I guess add that to the kerneldoc cleanup work.
-Daniel

>  	struct guc_ct_buffer_desc *desc;
>  	u32 *cmds;
>  	u32 size;
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
