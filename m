Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80E33580B0
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 12:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE876EA81;
	Thu,  8 Apr 2021 10:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D0F26EA7F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 10:36:25 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id p22so945881wmc.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Apr 2021 03:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ehb071qhtIjNwg1coki7qfy1ZvMlP2t+7HCBWvzOtdo=;
 b=E1codMSn0IXppsbUUVROaUamwBgW1+Bqn2Yc7Nhms6IPNIkKcACn6o+jhw6alG7V1t
 gQKajoYhG9V+L7oeIHqOYRxbywQMWyzF0q6x6peu0RGFiKMwyhmiNLu9OHnGQqnRKPjF
 8n7EosyEkFqjhKSSfR6IGNvqB2YaaqWuroS6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=Ehb071qhtIjNwg1coki7qfy1ZvMlP2t+7HCBWvzOtdo=;
 b=kmD5O/oF+ffmbBzP0G/tnqVtpLl0I+Ib0nlOQuTDqE0NB0dopjiORVwl6ebYuOcK9x
 oQXZFVl3lB85+F3jhRAnPi0HhUnbxUAHw8Hcvs2hecD/iwoVXgaQNEH7xBLU/Mk7FV5T
 GzrqRgeV+tMJrYQt45ffq4tmrWv//B77qsN18XY/owNb5x8olFm3PryIF1OTNcbuSs5i
 vZEz3Vw5ZbKT7+bJPXMnDFOPDLbg180rGwmacavOAaxoeNFFZkh8eS9W0shjGApjdw+3
 o288Ds4SYIKfqTaUooP3ru//zwZAelOb0EL2LqJXiykSxQ6xtQBZ3qwo9TGR2jTVIVaw
 dS8w==
X-Gm-Message-State: AOAM532ipqCLrU+NSJOsX7c9icZvXd9XHSONmIgizkmaOrLbapZTx4Nn
 K/iQX1HhCKVp1a0tqRvQ7jwlX8GAXONm3Q==
X-Google-Smtp-Source: ABdhPJxVRQpjUIE10JDuV/W/95buK8as49pxXaiEpY23riFd8jWlvKx5lmQHHebGeYW5WOocwxiUIQ==
X-Received: by 2002:a1c:4908:: with SMTP id w8mr7575080wma.57.1617878184058;
 Thu, 08 Apr 2021 03:36:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z8sm45559832wrh.37.2021.04.08.03.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Apr 2021 03:36:23 -0700 (PDT)
Date: Thu, 8 Apr 2021 12:36:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YG7cpchVvBAVgew7@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org
References: <20210326055505.1424432-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210326055505.1424432-1-hch@lst.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] add remap_pfn_range_notrack instead of reinventing
 it in i915 v2
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 dri-devel@lists.freedesktop.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 26, 2021 at 06:55:01AM +0100, Christoph Hellwig wrote:
> Hi all,
> 
> i915 has some reason to want to avoid the track_pfn_remap overhead in
> remap_pfn_range.  Add a function to the core VM to do just that rather
> than reinventing the functionality poorly in the driver.
> 
> Note that the remap_io_sg path does get exercises when using Xorg on my
> Thinkpad X1, so this should be considered lightly tested, I've not
> managed to hit the remap_io_mapping path at all.
> 
> Changes since v1:
>  - create a io_mapping_map_user wrapper instead of exporting
>    remap_pfn_range_notrack
>  - switch to plain remap_pfn_range for remap_sg as it does not use
>    a pre-verified pgprot from an iomap

I'm burried under patches and stuff so no in-depth review. But from a
quick scan lgtm. On the series:

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I've seen it's landed already in some tree, maybe if you can add the acks
ftr?

Cheers, Daniel

> 
> Diffstat:
>  drivers/gpu/drm/i915/Kconfig             |    1 
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c |    9 +-
>  drivers/gpu/drm/i915/i915_drv.h          |    3 
>  drivers/gpu/drm/i915/i915_mm.c           |  117 ++++++-------------------------
>  include/linux/io-mapping.h               |    3 
>  include/linux/mm.h                       |    2 
>  mm/Kconfig                               |    3 
>  mm/Makefile                              |    1 
>  mm/io-mapping.c                          |   29 +++++++
>  mm/memory.c                              |   51 ++++++++-----
>  10 files changed, 97 insertions(+), 122 deletions(-)

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
