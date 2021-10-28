Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D0343E513
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 17:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8D16E995;
	Thu, 28 Oct 2021 15:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15286E995
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 15:26:09 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id d10so10951156wrb.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 08:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=agTgEPLmvB/7z84bA0Fq2eAXyefFfSRIxtsavGdMMRY=;
 b=lvmK05pCCHf15pV8yJp+0uTRgIc88WGAvQ1vgdWsTfwJPbaNwflyl+/4AQl+zZYibi
 s2STHm9nRuvKY3NNLLKNasvC1/iogK50hsgmrJKZmj3+hLW/8QOc3Bw1Shxxnd9IXuLL
 PN7r3j0aMb57+SQQhhIQ1mvTTLNigF8rhWqH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=agTgEPLmvB/7z84bA0Fq2eAXyefFfSRIxtsavGdMMRY=;
 b=6t4KIWDXA10XGrnA5UqSJtGHv8LrNjmAC6g62fDzQ8xs30tEXX5QLFg6QBW+hSPp6D
 xy57mryaBZhCvFNHusRYpnfBtwlpYtE575b9egofUv3Zf3qpfgoDLavFDJign/9tQnnm
 pxxJoNoLTsC86YTSqfXGs1UaYyrIjnnfaXeivCFV4bDEXI56C4GOdOWJluXurgAtNKZY
 c6MEkwER6ciwfu3c8ytdi2PepGo39c7h+Je1C0yC/7+guLH9Rd1NY45CPgOfCfSGrvol
 c6GXrPKPfX4X+yZVq5CJwQxJ/LMHi8ZAltUZZ9vLH5d75cd6s51h4TXp5I7e4uK2HSc6
 SoCA==
X-Gm-Message-State: AOAM532jBEJczLIiLxrVtxBn1xl94KEUX5aOLpNfAeP5923zbiQXITj6
 oOQK9Hz2bzEadMBCWD/zw+L6eQ==
X-Google-Smtp-Source: ABdhPJwC658b6JYOWWx2PGdESXYuo9lApQkPGmjeLqc4rQ80PE9cO9n1U9xiKAB4QVeU4k7DVMHkuA==
X-Received: by 2002:a5d:604b:: with SMTP id j11mr6503662wrt.162.1635434768303; 
 Thu, 28 Oct 2021 08:26:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l124sm6962325wml.8.2021.10.28.08.26.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Oct 2021 08:26:07 -0700 (PDT)
Date: Thu, 28 Oct 2021 17:26:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, tvrtko.ursulin@linux.intel.com
Message-ID: <YXrBDSywbTHRoM3H@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-27-christian.koenig@amd.com>
 <YWbtV2ZVHg7n1xpm@phenom.ffwll.local>
 <cca39a70-5820-18e2-8bda-a4a0d7ad2c31@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cca39a70-5820-18e2-8bda-a4a0d7ad2c31@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 26/28] drm/nouveau: use the new interator in
 nv50_wndw_prepare_fb
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

On Fri, Oct 22, 2021 at 03:17:17PM +0200, Christian König wrote:
> Am 13.10.21 um 16:29 schrieb Daniel Vetter:
> > On Tue, Oct 05, 2021 at 01:37:40PM +0200, Christian König wrote:
> > > Makes the handling a bit more complex, but avoids the use of
> > > dma_resv_get_excl_unlocked().
> > > 
> > > Signed-off-by: Christian König <christian.koenig@amd.com>
> > > ---
> > >   drivers/gpu/drm/nouveau/dispnv50/wndw.c | 10 +++++++++-
> > >   1 file changed, 9 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/nouveau/dispnv50/wndw.c b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> > > index 8d048bacd6f0..30712a681e2a 100644
> > > --- a/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> > > +++ b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
> > > @@ -539,6 +539,8 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
> > >   	struct nouveau_bo *nvbo;
> > >   	struct nv50_head_atom *asyh;
> > >   	struct nv50_wndw_ctxdma *ctxdma;
> > > +	struct dma_resv_iter cursor;
> > > +	struct dma_fence *fence;
> > >   	int ret;
> > >   	NV_ATOMIC(drm, "%s prepare: %p\n", plane->name, fb);
> > > @@ -561,7 +563,13 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
> > >   			asyw->image.handle[0] = ctxdma->object.handle;
> > >   	}
> > > -	asyw->state.fence = dma_resv_get_excl_unlocked(nvbo->bo.base.resv);
> > > +	dma_resv_iter_begin(&cursor, nvbo->bo.base.resv, false);
> > > +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > > +		/* TODO: We only use the first writer here */
> > Same thing as with the atomic core helper. This is actually broken,
> > because for atomic we really do _not_ want to wait for any shared fences.
> > Which this will do, if there's no exclusive fence attached.
> > 
> > So upgrading my general concern on this and the atomic helper patch to a
> > reject, since I think it's broken.
> 
> Since we simply had a misunderstanding with that could I get an rb for that
> now?

Oh sorry, I thought I've supplied that. As much a you still trust my r-b
at least :-)

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> 
> Thanks,
> Christian.
> 
> > -Daniel
> > 
> > > +		asyw->state.fence = dma_fence_get(fence);
> > > +		break;
> > > +	}
> > > +	dma_resv_iter_end(&cursor);
> > >   	asyw->image.offset[0] = nvbo->offset;
> > >   	if (wndw->func->prepare) {
> > > -- 
> > > 2.25.1
> > > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
