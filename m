Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54F314A06C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2416EA71;
	Mon, 27 Jan 2020 09:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B621F6EA71
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 09:06:01 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id s10so2397792wmh.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 01:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=skD6KsbNTC8YBufTx8994xeXMmd4LfxtNfKHHZSZCCY=;
 b=AJL05RC9RoDfUiHa6C7xxV56b4sdHOTDCYY4TtWFrJFHLyjCxrG3407rseG2rXVPuG
 hKC/qEjXeJQbHLnl3RKWbDwNtmnNS8PVmakd83ftgjoxJhrAeS0CTn7y/UpcHhdIGokv
 MzaFHBxUKO1QwykBt9FZhgOlYtIQL9G1z/csE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=skD6KsbNTC8YBufTx8994xeXMmd4LfxtNfKHHZSZCCY=;
 b=bFWf3OuLE7slo3UnkVXI4z1wdRHSQcT+nOnFb3IxtqFsk59z28nDXvr9v4TdOwNLXV
 DpMdbbSoAaHR4AvFY+uUiBzi1Gc46lq+qnvg64EPVtqNaVezU6YQYFB9jsODUlXMN6Jk
 oe4CaoOf0IHBuYGBcWLTxpQ9xcIFApOjXa1squAwU39PMRwYXSHhZLq0Ij05wMC7I9Lz
 wZSQ0I7vjuCz9UICvsP548z1is8hpW92vv/cD0ODGdiZ44rbn34466CaOnJYyI8Gvk6X
 dc0AuBs6U8E0Srkezwl9B4XvHRIq5mCilnD6cJJDoSZwGdi9Uxp7loe3lwF6FtV0qmUf
 1yYA==
X-Gm-Message-State: APjAAAUE1ejzUJc551EzrS7T7IKxscXXTtbuo+/CIBoQ0Q79OeBq/2oE
 0iU2gbUurLsdIApfRaKgbPIayg==
X-Google-Smtp-Source: APXvYqz7HgDc75LeHLHMNJ1pvjtFzSNhVwrleSA9jWJFlTZ+Be7nFmdMno9WF/N8WTsD3Fbz/nVZKw==
X-Received: by 2002:a1c:a4c3:: with SMTP id n186mr10813787wme.25.1580115960316; 
 Mon, 27 Jan 2020 01:06:00 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c2sm19726310wrp.46.2020.01.27.01.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 01:05:59 -0800 (PST)
Date: Mon, 27 Jan 2020 10:05:57 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200127090557.GU43062@phenom.ffwll.local>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 linux-kernel@vger.kernel.org, rodrigo.vivi@intel.com
References: <20200122125750.9737-1-wambui.karugax@gmail.com>
 <157996851987.2524.2577321446102599250@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157996851987.2524.2577321446102599250@skylake-alporthouse-com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915/gem: conversion to new drm
 logging macros
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jan 25, 2020 at 04:08:39PM +0000, Chris Wilson wrote:
> Quoting Wambui Karuga (2020-01-22 12:57:48)
> > This series is a part of the conversion to  the new struct drm_device
> > based logging macros in drm/i915.
> > This series focuses on the drm/i915/gem directory and converts all
> > straightforward instances of the printk based logging macros to the new
> > macros.
> 
> Overall, I'm not keen on this as it perpetuates the mistake of putting
> client debug message in dmesg and now gives them even more an air of
> being device driver debug messages. We need a mechanism by which we
> report the details of what a client did wrong back to that client
> (tracefs + context/client getparam to return an isolated debug fd is my
> idea).

Sean is working on that, but it's a global thing still. Well since it's
tracefs should be easy to filter for a given process at least. We've had
long discussion about how to expose that, big fear (especially with
atomic) is that clients/compositors will start to look at random debug
strings and make them uapi.

But I think for stuff like igt we should be able to wire it up easily and
get it dumped when things go wrong. Maybe similar when mesa gets an
unexpected errno.
-Daniel

> > Wambui Karuga (2):
> >   drm/i915/gem: initial conversion to new logging macros using
> >     coccinelle.
> >   drm/i915/gem: manual conversion to struct drm_device logging macros.
> 
> Still this is a necessary evil for the current situation,
> Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
