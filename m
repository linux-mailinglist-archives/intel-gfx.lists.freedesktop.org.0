Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B84457502
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 18:06:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9E926E3FE;
	Fri, 19 Nov 2021 17:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD9B6E42C
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 17:06:30 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id u18so19284997wrg.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 09:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=esmgZyHDqtLJj9N0n1GSAAg2uByxAjvDkFkxEe61YbU=;
 b=PggeGSV5TYh0/2/EsUP3Wouj3orU5X7XeqFKs1kzBKJR90CTOqlWpFgxNTn/tANpOo
 4ukUuUdHKiDB5HJmP66MBYv4cFsxzreugPplWGlxnL4yph+EW8TZaXt0/C1K+xIg7spm
 jG+++10n03pKZabsLIPJLon+jmh7unLKc1agg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=esmgZyHDqtLJj9N0n1GSAAg2uByxAjvDkFkxEe61YbU=;
 b=AKS6dJePJPs3PtGaFHX3F+8laSQAZwkw0HnYgZu5+eZEQ/J3HopIPTtQhOHymKKZ7/
 1StjkKOULBjj74aUH+WEGFK34iow0qgMzNyW34j3hoXKIEXPmynDoXXGc/LeRD53D65N
 v/Ps1IvlnWGxLauXktLykymWDihkHkKVhzhYcR6vefFkLd2UChgLcwmfXZYajaRlU0N8
 L+zOe0WIyMUB5C0Q0yjFnjDCKCg82aS2fYpMidr7gToikW4Mz8UhshqmjkK2kn+wcUFn
 9nhPEUSmvzxxfTgWmANyJ9JaloSwls+TG5PfbeQQFgY/oViCCTe3JC4Eri80XITHWKVe
 SDKQ==
X-Gm-Message-State: AOAM530IpdsVS4yNwuKdeh2GE5QLNS19hyzx3v2NVQrDSTeKfuO6TUsK
 QsZnX3hY3yOdIRmQRBn9bAD9sg==
X-Google-Smtp-Source: ABdhPJy0AIMKE/gOavMEquGhzAKySgdwpLKs2pTdm3Loafq9InVCcphVukA57szvoAJMuZZoYS9UCg==
X-Received: by 2002:adf:e84d:: with SMTP id d13mr9301228wrn.72.1637341588995; 
 Fri, 19 Nov 2021 09:06:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k37sm263209wms.21.2021.11.19.09.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 09:06:28 -0800 (PST)
Date: Fri, 19 Nov 2021 18:06:26 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YZfZkh2ESCLDrifA@phenom.ffwll.local>
References: <f73304f7-6ada-bcd2-97b3-c7898cbd166c@linux.intel.com>
 <5f292380-c3a2-3ec3-91bb-5e66a9290aac@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5f292380-c3a2-3ec3-91bb-5e66a9290aac@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] Sparsely populated TTM bos
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 19, 2021 at 05:35:53PM +0100, Christian König wrote:
> Hi Thomas,
> 
> Am 19.11.21 um 15:28 schrieb Thomas Hellström:
> > Hi, Christian,
> > 
> > We have an upcoming use-case in i915 where one solution would be
> > sparsely populated TTM bos.
> > 
> > We had that at one point where ttm_tt pages were allocated on demand,
> > but this time we'd rather be looking at multiple struct ttm_resources
> > per bo and those resources could be from different managers.
> > 
> > There might theoretically be other ways we can handle this use-case but
> > I wanted to check with you whether this is something AMD is already
> > looking into and if not, your general opinion.
> 
> oh, yes I've looked into this as well a very long time ago.
> 
> At that point the basic blocker was that we couldn't have different cache
> setting for the same VMA, but I think that's fixed by now.

I think for cpu mmap we might just disallow them. Or we just migrate them
back into so that cpu access is always done in the same (or at least a
compatible) cache domain.

We can't really talk yet about what this thing is for, but "entire ttm_bo
cpu mmap must have same caching mode" shouldn't be a real limitation for
what we want to do here.

> Another thing is that you essentially need to move the LRU handling into the
> resource like I already planned to do anyway.

Yeah, hence why I suggested going ttm_bo : ttm_resource 1:N might be a
good idea in general, and we could piggy-pack on top of this. If you're
all on board then I guess we'll try to prototype something and maybe if
you're bored we could resurrect some of the patches to move lru/dma_resv
and whatever else from ttm_bo to ttm_resource? Just to see how much this
would impact.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
