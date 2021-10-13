Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9774042C35F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 16:34:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58ACF6E069;
	Wed, 13 Oct 2021 14:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51EE06E069
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 14:33:59 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id r18so9129569wrg.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 07:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=pZqawXw6UpoUQ2cej4Qa5A3wHYYjxH4fj/Bl1MwSL8w=;
 b=Jxp0oqznNbBiOsB8cW3LRAMwIa/3afgU8ZgLZdrZuLhGoMoE8fkmlbERISJ9MLYIIX
 eSURghWFTAyYBcOglsYo5NsuO7LtaERM01z84d3hL8yNS4noitygVtxc7N82mPV2f4YE
 fUz3jktTaQzL3LgoBhLm86p8jPrzPjzOs47Zg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pZqawXw6UpoUQ2cej4Qa5A3wHYYjxH4fj/Bl1MwSL8w=;
 b=Jn3agJ7K/g0DBXR0AsHHLwWvcOjvBASRvBnU1scsJRVGADNTLOXd56WNliahDHLKDt
 zsUhvc88BukQKnobdkEEOgzEXC13Rkbt2bUWMxIOjqYzjRpi2D9kUVWR9k/Kpst1BiA2
 XVkpOAJ7uBJDCib/RTb1sdMfCKCFFOwPrXmARAPuQtp5KehALGDXw6Twoy1dLnTuPToC
 yvSFuTd3Ifcw8p9MHnmRqAIWNTp0wgsnNNbi08ypNtQeDyI0yxarVv8NwuoguijWBkxm
 +FTgUzh0cpjAqz6LBb0kr0S77XcXLfGkj+lvQo//0JmSxhyMaeA4brOBMtyRPx1qPAnx
 MkGw==
X-Gm-Message-State: AOAM530BpXf3gudI4XjGdcUueDJxXniWtWviGv9aCD/gbCpX9LQu+ll5
 dhhT4d6muUgmOpSOKpyG+GCs9w==
X-Google-Smtp-Source: ABdhPJxFav47gRkOdlOCldp3JsxK3LwtLHV/iuJaoMI9I8Ony8ciBtEWdYIJdx2vLIhm5tfCvmzJ/g==
X-Received: by 2002:a1c:4d06:: with SMTP id o6mr13098685wmh.137.1634135637872; 
 Wed, 13 Oct 2021 07:33:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n17sm12435286wrq.11.2021.10.13.07.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 07:33:57 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:33:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
 matthew.auld@intel.com
Message-ID: <YWbuU+09AkjCnGyq@phenom.ffwll.local>
References: <20211008133530.664509-1-thomas.hellstrom@linux.intel.com>
 <20211008133530.664509-5-thomas.hellstrom@linux.intel.com>
 <YWbUZ2A7iLEAaRW+@phenom.ffwll.local>
 <3af6691caadc315b01bf3acdff94ff14f967a4a4.camel@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3af6691caadc315b01bf3acdff94ff14f967a4a4.camel@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Add a struct dma_fence_work
 timeline
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

On Wed, Oct 13, 2021 at 04:21:43PM +0200, Thomas Hellström wrote:
> On Wed, 2021-10-13 at 14:43 +0200, Daniel Vetter wrote:
> > On Fri, Oct 08, 2021 at 03:35:28PM +0200, Thomas Hellström wrote:
> > > The TTM managers and, possibly, the gtt address space managers will
> > > need to be able to order fences for async operation.
> > > Using dma_fence_is_later() for this will require that the fences we
> > > hand
> > > them are from a single fence context and ordered.
> > > 
> > > Introduce a struct dma_fence_work_timeline, and a function to
> > > attach
> > > struct dma_fence_work to such a timeline in a way that all previous
> > > fences attached to the timeline will be signaled when the latest
> > > attached struct dma_fence_work signals.
> > > 
> > > Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> > 
> > I'm not understanding why we need this:
> > 
> > - if we just want to order dma_fence work, then an ordered workqueue
> > is
> >   what we want. Which is why hand-rolling is better than reusing
> >   dma_fence_work for absolutely everything.
> > 
> > - if we just need to make sure the public fences signal in order,
> > then
> >   it's a dma_fence_chain.
> 
> Part of the same series that needs reworking.
> 
> What we need here is a way to coalesce multiple fences from various
> contexts (including both gpu and work fences) into a single fence and
> then attach it to a timeline.

I thought dma_fence_chain does this for you, including coelescing on the
same timeline. Or at least it's supposed to, because if it doesn't you can
produce some rather epic chain explosions with vulkan :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
