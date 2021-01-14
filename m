Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 714752F5E03
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 10:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C21226E185;
	Thu, 14 Jan 2021 09:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4396E185
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 09:47:43 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id a9so1598899wrt.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 01:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Lr4HFDQD/OgLdFSt2T0Qk+36tgxVy2abGau5r4jbqrs=;
 b=GsrwHCxarW2zyPDywcUCydLmWIeKGtMZ72RWDQ0CdNKLQeMQ/4YdCAKLmFwgmg4Asy
 n7o5qe/M53TD5QTUEBV7x9eP1F3nQIUxz0EwqvC6gnL60FIvztZN7FzL9TMp3V9eE2yf
 J55/eiTc0epkVvHfebgu2W/FeAkHYgJ3I3EoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Lr4HFDQD/OgLdFSt2T0Qk+36tgxVy2abGau5r4jbqrs=;
 b=H5AVcX+T4x9CI7AlCzEhIFk/ZI0rZrej0Ur3rJOUpchedvDc+aKcgeB+0jKBiirGem
 1sxhEQWjsqqXi9NCqPm/yU1jewJMKUVwoKoJBIu/a2q1U89c7JkfKmKcaHUrrcruBTbT
 BT60BJafi5ft7hy4BfhR19ioqEcNPGqNLC+Vv0ClSS7+kqdwKqRbWil1eyLLvzzmEeQ0
 q6flH3PXAqHyNSJt62SGkMwHU9IMEJhjPnYP16fsYMWSw3JD+phKupdIbtaNQoJF6UpU
 Pyw9xhekiHUnPUZLa5TtsdFfC1nsJodDgPfbxuGfTWITSY623R72ZFDw7C9k/c4Ia7MO
 Ps5A==
X-Gm-Message-State: AOAM533lQUaJkr2cEXJ9EcNw7QmyJl+7TAuHB5J68P1lgzIVXzRPG4/I
 jeCRgyvwUCAW5msO94o/uer33g==
X-Google-Smtp-Source: ABdhPJzRB16m0qIFLLDYx22LgQGloNR8gD4PIbsLjruBzLlDpi5UaTEz+LfG4jWmkSZoevmoI9Q4tQ==
X-Received: by 2002:a05:6000:108b:: with SMTP id
 y11mr6877710wrw.379.1610617662616; 
 Thu, 14 Jan 2021 01:47:42 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m5sm8207087wrz.18.2021.01.14.01.47.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 01:47:41 -0800 (PST)
Date: Thu, 14 Jan 2021 10:47:40 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YAATPMc+1jmhxnsF@phenom.ffwll.local>
References: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
 <161055261490.6195.7986280621869334351@build.alporthouse.com>
 <CAKMK7uEnnEj_YAR5Tm3jpS7MNPkqB43JBhQnY_K0YQ+LE9wL1g@mail.gmail.com>
 <161057213487.6195.581396740566956696@build.alporthouse.com>
 <CAKMK7uGXtu0V8TVaQ2XyuE9vOdJOWKrCYUNkh0FJMfucSyS2vg@mail.gmail.com>
 <161061619887.19482.10606780107376365239@build.alporthouse.com>
 <CAKMK7uE58dJabnaTNgePTyio_JY3=kvFZtu1RT1eFeGDK76ZeA@mail.gmail.com>
 <161061753732.19482.13146900597152116822@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161061753732.19482.13146900597152116822@build.alporthouse.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm-buf: Add debug option
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 John Stultz <john.stultz@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 DMA BUFFER SHARING FRAMEWORK <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 14, 2021 at 09:45:37AM +0000, Chris Wilson wrote:
> Quoting Daniel Vetter (2021-01-14 09:30:32)
> > On Thu, Jan 14, 2021 at 10:23 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > The only other problem I see with the implementation is that there's
> > > nothing that says that each dmabuf->ops->map_dma_buf() returns a new
> > > sg_table, so we may end up undoing the xor. Or should each dma-buf
> > > return a fresh dma-mapping for iommu isolation?
> > 
> > Maybe I screwed it up, but that's why I extracted the little helpers:
> > We scramble when we get the sgtable from exporter, and unscramble
> > before we pass it back. dma-buf.c does some caching and will hand back
> > the same sgtable, but for that case we don't re-scramble.
> 
> The attachment is only mapped once, but there can be more than one
> attachment, and the backend could return the same sg_table for each
> mapping. Conceivably, it could return its own private sg_table where it
> wants to maintain the struct page. Seems like just adding a sentence to
> @map_dma_buf to clarify that each call should return a new sg_table will
> suffice.

Ah yes good point, will augment (once CI stops being angry at me).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
