Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8272D784265
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 15:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B4C10E374;
	Tue, 22 Aug 2023 13:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1EA10E36E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 13:50:50 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-3fef6cee938so2116905e9.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 06:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1692712249; x=1693317049;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1brlrDoRTrCTNfEQvCoJBeloJ3li1SOMaNJM2vZ/EgM=;
 b=e4ifZ9hgCD6f1N648NOzF6F0tPOPgsmOH1TlZJBtlHESpNGxlwACvQeWDdxkPQBmjR
 yDVNUWor/8AF78ZBdvxYUt+f+C/j8ULZEcq6co1Z+lqPtBG/Uiu7O3GFl+nGjWdJp8//
 E7K0FU/PgG6L1EelAZDpGxWBE4niid1Uuqktc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692712249; x=1693317049;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1brlrDoRTrCTNfEQvCoJBeloJ3li1SOMaNJM2vZ/EgM=;
 b=koa3NuYhFgl+HWTM/nnbn9RxYrLURAellPnO1EvMkqYhotQME5CZ/2VIeMWTnUHlnG
 JFNkkZmAfzahkneRVyWR3ErfhNfslrH0/HXtbF51A4MdYvewA/HlnOh9vB2LrTGVguOy
 ipbGUfVWxflV6+aMTLAlRq1g8xE/8NZBEHz+IdUPXspg7y7Rz5Gzpy2x8FJ2uCZz19J+
 /PAXEXG/j8+Loz4J0GU3i86xuX39CSfxsR3ChhJPa7Je4P/HatXAvbACwBE27uO+96Xj
 1cmDlsMxe11vsHGsLrfV6iuFHJmx0wE9qgWyeCfEMP1LqswfDrsNNOVHxp3R2J8JXgpK
 pjRQ==
X-Gm-Message-State: AOJu0YxcozRC2k1MngIdWU1nfJJ487D7ioUbG/GktZ3c4fXQVvpZtHzf
 PkIUszmXlnufyrFK09seXPXcoaEGUHNI1515Cvo=
X-Google-Smtp-Source: AGHT+IFMlAJFkKK9SVntMZsLu9s4iGIBmBqmeqkU8VlbLDTFkhhADvYpmNla3+a7FFpGifg2XYokXw==
X-Received: by 2002:a7b:c459:0:b0:3fe:5228:b78c with SMTP id
 l25-20020a7bc459000000b003fe5228b78cmr7804628wmi.1.1692712248906; 
 Tue, 22 Aug 2023 06:50:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a1c7709000000b003feee8d4b92sm8286239wmi.47.2023.08.22.06.50.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Aug 2023 06:50:47 -0700 (PDT)
Date: Tue, 22 Aug 2023 15:50:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Zhanjun Dong <zhanjun.dong@intel.com>
Message-ID: <ZOS9NURIoBK1lyi8@phenom.ffwll.local>
References: <20230811182011.546026-1-zhanjun.dong@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230811182011.546026-1-zhanjun.dong@intel.com>
X-Operating-System: Linux phenom 6.3.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Avoid circular locking
 dependency when flush delayed work on gt reset
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
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 11, 2023 at 11:20:11AM -0700, Zhanjun Dong wrote:
> This attempts to avoid circular locking dependency between flush delayed
> work and intel_gt_reset.
> When intel_gt_reset was called, task will hold a lock.
> To cacel delayed work here, the _sync version will also acquire a lock,
> which might trigger the possible cirular locking dependency warning.
> When intel_gt_reset called, reset_in_progress flag will be set, add code
> to check the flag, call async verion if reset is in progress.
> 
> Signed-off-by: Zhanjun Dong <zhanjun.dong@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index a0e3ef1c65d2..600388c849f7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1359,7 +1359,16 @@ static void guc_enable_busyness_worker(struct intel_guc *guc)
>  
>  static void guc_cancel_busyness_worker(struct intel_guc *guc)
>  {
> -	cancel_delayed_work_sync(&guc->timestamp.work);
> +	/*
> +	 * When intel_gt_reset was called, task will hold a lock.
> +	 * To cacel delayed work here, the _sync version will also acquire a lock, which might
> +	 * trigger the possible cirular locking dependency warning.

This is not even close to a locking bugfix. Consider this a formal nack,
because the issue here is not even close to "needs more comments to
explain what's going on".
-Daniel

> +	 * Check the reset_in_progress flag, call async verion if reset is in progress.
> +	 */
> +	if (guc_to_gt(guc)->uc.reset_in_progress)
> +		cancel_delayed_work(&guc->timestamp.work);
> +	else
> +		cancel_delayed_work_sync(&guc->timestamp.work);
>  }
>  
>  static void __reset_guc_busyness_stats(struct intel_guc *guc)
> -- 
> 2.34.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
