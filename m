Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EBC436045
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 13:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A0289C16;
	Thu, 21 Oct 2021 11:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F1E6E432
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 11:30:10 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 s198-20020a1ca9cf000000b0030d6986ea9fso445272wme.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 04:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dhkroFo5cTqPW/9I0QfTfl4tRGasMCZec3snfXwEdQw=;
 b=cNCzH/F9jo1mrS9fIpnFRxiuK1duTdSiS/BYtW0H9+6dSbICcyVyeVk6jY6OCbznn/
 2cvw43JzEBZdJmClLo6p4YPeApuCIGvjhatiGHDTCUHtpz/JoAHDpayhd4GLNKER4mAO
 +kizyafx9rF0g39mxgF0BMzXJKc8m8qYpo2oY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dhkroFo5cTqPW/9I0QfTfl4tRGasMCZec3snfXwEdQw=;
 b=GD2J8jMUwezNRWsFbY8ITOoTJiLI2u5sEKePxF0T6fHPNrNQtvSorzDlh93eatCNxx
 cxq/swwSI/zsn7Jqlxg26RHJBRxWUrkfF6IaP9BxkSKmX9bx5bodJMIMq/TW3BMW8fSL
 Qfw2iIBPJQcMnWykUysQemP7w+3ma7D4Nf10qT6Up54ZDvqau+ObWGnLSvfdzusSSCzE
 PWyU+Si/SQJ01MDUavsCPk4ItbmXJ+jKAONPUYXyTIUvA3r0lycr20II8lxrKZWnQH+B
 bn6l2YSAXBrDJLN3GESDm7hwWq60PdynSpBgUHkaMckrs28iKTp9b2SSZErqUuj98VFx
 LVqg==
X-Gm-Message-State: AOAM5319/W7nHAEnwWW73vw0JYItlUZvb9njHpU9Of9FY306APpIj6Kc
 bRL/O3ewyDBtNsj4wRjmDzfkKA==
X-Google-Smtp-Source: ABdhPJzVEsIh/7AIiiuboT/OSVHnKqiQNg3iRZoNs0kgS+jdXcxGYl4P7uvEF+ur0clU4RQu6vQ/fg==
X-Received: by 2002:a1c:4444:: with SMTP id r65mr5934723wma.174.1634815809326; 
 Thu, 21 Oct 2021 04:30:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p3sm4628449wrs.10.2021.10.21.04.30.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 04:30:08 -0700 (PDT)
Date: Thu, 21 Oct 2021 13:30:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, tvrtko.ursulin@linux.intel.com
Message-ID: <YXFPP2wdjNV46YgP@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-15-christian.koenig@amd.com>
 <YWbp1PoezuLqHpKZ@phenom.ffwll.local>
 <9fff1e2b-b4f1-9c36-b621-4c896bf58c01@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9fff1e2b-b4f1-9c36-b621-4c896bf58c01@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 14/28] drm/msm: use new iterator in
 msm_gem_describe
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

On Tue, Oct 19, 2021 at 01:49:08PM +0200, Christian K�nig wrote:
> Am 13.10.21 um 16:14 schrieb Daniel Vetter:
> > On Tue, Oct 05, 2021 at 01:37:28PM +0200, Christian K�nig wrote:
> > > Simplifying the code a bit. Also drop the RCU read side lock since the
> > > object is locked anyway.
> > > 
> > > Untested since I can't get the driver to compile on !ARM.
> > Cross-compiler install is pretty easy and you should have that for pushing
> > drm changes to drm-misc :-)
> 
> I do have cross compile setups for some architectures, but I seriously can't
> do that for every single driver.
> 
> With only a bit of work we allowed MSM to be compile tested on other
> architectures as well now. That even yielded a couple of missing includes
> and dependencies in MSM which just don't matter on ARM.

The only ones you need is arm32 and arm64.
-Daniel

> 
> > 
> > > Signed-off-by: Christian K�nig <christian.koenig@amd.com>
> > Assuming this compiles, it looks correct.
> 
> Yes it does.
> 
> > 
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> 
> Thanks,
> Christian.
> 
> > 
> > > ---
> > >   drivers/gpu/drm/msm/msm_gem.c | 19 +++++--------------
> > >   1 file changed, 5 insertions(+), 14 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
> > > index 40a9863f5951..5bd511f07c07 100644
> > > --- a/drivers/gpu/drm/msm/msm_gem.c
> > > +++ b/drivers/gpu/drm/msm/msm_gem.c
> > > @@ -880,7 +880,7 @@ void msm_gem_describe(struct drm_gem_object *obj, struct seq_file *m,
> > >   {
> > >   	struct msm_gem_object *msm_obj = to_msm_bo(obj);
> > >   	struct dma_resv *robj = obj->resv;
> > > -	struct dma_resv_list *fobj;
> > > +	struct dma_resv_iter cursor;
> > >   	struct dma_fence *fence;
> > >   	struct msm_gem_vma *vma;
> > >   	uint64_t off = drm_vma_node_start(&obj->vma_node);
> > > @@ -955,22 +955,13 @@ void msm_gem_describe(struct drm_gem_object *obj, struct seq_file *m,
> > >   		seq_puts(m, "\n");
> > >   	}
> > > -	rcu_read_lock();
> > > -	fobj = dma_resv_shared_list(robj);
> > > -	if (fobj) {
> > > -		unsigned int i, shared_count = fobj->shared_count;
> > > -
> > > -		for (i = 0; i < shared_count; i++) {
> > > -			fence = rcu_dereference(fobj->shared[i]);
> > > +	dma_resv_for_each_fence(&cursor, robj, true, fence) {
> > > +		if (dma_resv_iter_is_exclusive(&cursor))
> > > +			describe_fence(fence, "Exclusive", m);
> > > +		else
> > >   			describe_fence(fence, "Shared", m);
> > > -		}
> > >   	}
> > > -	fence = dma_resv_excl_fence(robj);
> > > -	if (fence)
> > > -		describe_fence(fence, "Exclusive", m);
> > > -	rcu_read_unlock();
> > > -
> > >   	msm_gem_unlock(obj);
> > >   }
> > > -- 
> > > 2.25.1
> > > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
