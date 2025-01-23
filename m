Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19CBA1A652
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 15:55:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A5410E293;
	Thu, 23 Jan 2025 14:55:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="RzRa2e53";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC51710E83C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 14:55:29 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-4363dc916ceso14315225e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 06:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1737644128; x=1738248928; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=upW0o11czM3rq1xyIyTJu9A6ZGTiL/ktJa+3JV8KCvY=;
 b=RzRa2e537o1ucY5AFR5e/9ROfT5Gkv9HKT7on/WCVH12ABHpyoL+n+Rcu+fpt3mYF6
 EGe/n5sUqXrYKaHWw8h9euh0m8JvczuEABk/RA9PQYnAn/IOT5zETcU5dv+eQve4USmo
 6andFBkvCVLujH3G5ScpLABSIRvAnpzES/BBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737644128; x=1738248928;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=upW0o11czM3rq1xyIyTJu9A6ZGTiL/ktJa+3JV8KCvY=;
 b=VbW+9w30ozJ/6ol2xa4KUyyvOhRJYrkEg+c6GWcJzB4gtMwvslOg0UVYpcX7R6d0HK
 3WISKLkgSMd0NXXPOYtidjkq4I2d52cZaZpDkY/UQRAz1jktVLeSLtAfLNdWo4RmOitN
 4eTO+4XClApqEvg9aI9ZQsJG/dM6NVaV9jtiltB3SomUtJiL9/sn5qbC/bxjqYYKPtYz
 xbJBrE/ylLHi6PjpMct8a+vaF9BgWgWXpoZ5a3fnoIg7vpRlhzhcUhBHFG8npai+Rzch
 Iwy+v2uJxDnr+bOcqjYUKKQGHc7QP019PAVMuc1M5GDiT2qMry27LJs0h4qygz/n+F8g
 L+4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVYcnDzWkQYHi+X0Tv/nC21Z7wpPlHsMB7Hn3PaTE9Z2pL12GW86gk+VOj928l715+FanXUZQRVYHw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwXAa6etslZMTSuRNdqYQrujz2/boZ8aIomRNeXOYRrImNTYuXB
 8m++EO5G6yKRc8zJcwK2yLVdJOjrLiqXrPakBZnjV2XuiWZD0uddSh49gc7UYUU=
X-Gm-Gg: ASbGncuZcEmwnFMh/qs4/BYb88pSRfpWISM8rEPg6ckRebwNk0U+6cxuhONjTJJbH1n
 CQAo0fiFJUPlGmShza4r4EajLX+BPK5WuUYOxSqTeh1UewB64GM1DkxPDYtfFoIVlFRDjBtJNEW
 2D6juPVsqmNCcOLaEr5UJ/JoJaXcs9wb8Je5ktpb760rggg7o53KKA1iXpNZWip4o5IEQKCoIDt
 WHoxuLqglL16hpr1jew8gRh4dM9CR5CKUoCh6BGPWZa2ZkxHj51WJdskHF6LjVHOtuX/M03miYk
 wTJPmuqJNNg5zlSD
X-Google-Smtp-Source: AGHT+IE7BhkUFF2qHI0G/tCUqF6t2iGENyy5rwl62Zw7BY/QQn9skwrSBU8Fm+gu4mBqm2ES4RoHjw==
X-Received: by 2002:a05:600c:5110:b0:42c:b8c9:16c8 with SMTP id
 5b1f17b1804b1-438b885b8c1mr34261125e9.10.1737644128137; 
 Thu, 23 Jan 2025 06:55:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-438b318aae1sm67298595e9.1.2025.01.23.06.55.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2025 06:55:27 -0800 (PST)
Date: Thu, 23 Jan 2025 15:55:24 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, simona.vetter@ffwll.ch
Subject: Re: [PATCH 0/2] drm: add header tests
Message-ID: <Z5JYXICinxvDXN2J@phenom.ffwll.local>
References: <cover.1737556766.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1737556766.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 6.12.3-amd64 
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

On Wed, Jan 22, 2025 at 04:41:32PM +0200, Jani Nikula wrote:
> Add CONFIG_DRM_HEADER_TEST to ensure drm headers are self-contained and
> pass kernel-doc. And for starters, fix one header that this catches.
> 
> Jani Nikula (2):
>   drm/client: include types.h to make drm_client_event.h self-contained
>   drm: ensure drm headers are self-contained and pass kernel-doc

I guess we should give this another shot. On the series:

Acked-by: Simona Vetter <simona.vetter@ffwll.ch>


> 
>  Kbuild                         |  1 +
>  drivers/gpu/drm/Kconfig        | 11 +++++++++++
>  drivers/gpu/drm/Makefile       | 18 ++++++++++++++++++
>  include/Kbuild                 |  1 +
>  include/drm/Makefile           | 18 ++++++++++++++++++
>  include/drm/drm_client_event.h |  2 ++
>  6 files changed, 51 insertions(+)
>  create mode 100644 include/Kbuild
>  create mode 100644 include/drm/Makefile
> 
> -- 
> 2.39.5
> 

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
