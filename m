Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E85634348
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 19:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F375C10E430;
	Tue, 22 Nov 2022 18:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B7710E430
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 18:08:38 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id ft34so37541882ejc.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 10:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yeE/fvHo7zplB3H0njfvx+KBD+UsXtgVtTcTsJSQKTs=;
 b=HJQzg3HAQLfej9Lynj1eAMPPLxHBUWytNt/6mGkTn4aeoz+YFCARsIB3utatEXxeDD
 OyHr1lPIXUf7zx9qQWafuBhFg7CdNJSUeoRB61i9yhQ22q5typ8pT/pxa5z5QY5lUTEh
 gk+HrYz68CeLLiJM2B8IZENBotgdF7bB+GjpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yeE/fvHo7zplB3H0njfvx+KBD+UsXtgVtTcTsJSQKTs=;
 b=IUda6A9MC7s8ya/2ygLlauvlREnSCcrKU4e2WD47eXgk/7BpckZN8HYvQOVAPwJQHt
 3JzO+kg/nCFe3LlxYm37SbtMk8tfG9P5u47ltrlTIWwZeLAVUplF5+80tan2Gtnv37zW
 DXSBYrmd4O2y8tdavqYpFfPCAjJaMS1oBXdcgiveNDCNPaF0yYzEQkfdEcFy0jYWtnWb
 ifM7WCCg6F0BedD4tmhAiRnRjjjIWUSy+ZvvIgVxtkpl80Yb6UZXCmhccca/mK2WwiXE
 aCHp77j3qKcTGK0ySUlYXLL8yP1BwwkDam7I+u9jccc7RuV7MUWrpxhRFlGKGJQecWSS
 3TlA==
X-Gm-Message-State: ANoB5pmA0Le2ivDnfVcU+Aru/ah0WpC1BR3dCywKn7z9nNYKYwIkVkOr
 rpSmD3+b02Miy5DcPbzy2Klx4UmfMQL25SRumRWkLg==
X-Google-Smtp-Source: AA0mqf5YaIer5B7BWrJ7ocvdT+1R5W8bGrPu5RkAiIG9/MkRdfGUud/7t1Fi3LwOKtyXP+dS2/LSLhbZV2Y6VlJIN58=
X-Received: by 2002:a17:906:414c:b0:7a9:ecc1:2bd2 with SMTP id
 l12-20020a170906414c00b007a9ecc12bd2mr8382937ejk.545.1669140516986; Tue, 22
 Nov 2022 10:08:36 -0800 (PST)
MIME-Version: 1.0
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
 <Y30PDdsvHIJo5YHR@ziepe.ca>
In-Reply-To: <Y30PDdsvHIJo5YHR@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Nov 2022 19:08:25 +0100
Message-ID: <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 linaro-mm-sig@lists.linaro.org, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 22 Nov 2022 at 19:04, Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Tue, Nov 22, 2022 at 06:08:00PM +0100, Daniel Vetter wrote:
> > tldr; DMA buffers aren't normal memory, expecting that you can use
> > them like that (like calling get_user_pages works, or that they're
> > accounting like any other normal memory) cannot be guaranteed.
> >
> > Since some userspace only runs on integrated devices, where all
> > buffers are actually all resident system memory, there's a huge
> > temptation to assume that a struct page is always present and useable
> > like for any more pagecache backed mmap. This has the potential to
> > result in a uapi nightmare.
> >
> > To stop this gap require that DMA buffer mmaps are VM_PFNMAP, which
> > blocks get_user_pages and all the other struct page based
> > infrastructure for everyone. In spirit this is the uapi counterpart to
> > the kernel-internal CONFIG_DMABUF_DEBUG.
> >
> > Motivated by a recent patch which wanted to swich the system dma-buf
> > heap to vm_insert_page instead of vm_insert_pfn.
> >
> > v2:
> >
> > Jason brought up that we also want to guarantee that all ptes have the
> > pte_special flag set, to catch fast get_user_pages (on architectures
> > that support this). Allowing VM_MIXEDMAP (like VM_SPECIAL does) would
> > still allow vm_insert_page, but limiting to VM_PFNMAP will catch that.
> >
> > From auditing the various functions to insert pfn pte entires
> > (vm_insert_pfn_prot, remap_pfn_range and all it's callers like
> > dma_mmap_wc) it looks like VM_PFNMAP is already required anyway, so
> > this should be the correct flag to check for.
>
> I didn't look at how this actually gets used, but it is a bit of a
> pain to insert a lifetime controlled object like a struct page as a
> special PTE/VM_PFNMAP
>
> How is the lifetime model implemented here? How do you know when
> userspace has finally unmapped the page?

The vma has a filp which is the refcounted dma_buf. With dma_buf you
never get an individual page it's always the entire object. And it's
up to the allocator how exactly it wants to use or not use the page's
refcount. So if gup goes in and elevates the refcount, you can break
stuff, which is why I'm doing this.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
