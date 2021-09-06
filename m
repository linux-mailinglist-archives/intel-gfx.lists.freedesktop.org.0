Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1652402084
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 21:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7325689C25;
	Mon,  6 Sep 2021 19:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 301CC89C25
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 19:45:02 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id i6so10776901edu.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Sep 2021 12:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WkCxDUgwvSWTa4TybLGjrpb0Qy5LQw5TzCVXxoCsbgI=;
 b=Omfx16thSrng/LZDXYn2C0ZcLH9qa5q8i9XLDdWvQkDlE36ks0EWutWQVAd9tdSUV/
 No/Lk1DaxdG5pLUUmvH1GfwnkITzyEzGAyB3cGwwBRlGo4dCAG238du2hdvp9ND1gaBj
 oDhKemmMBQmZ1R/S8YiIFcpJU9iR2N7OtvY0x5MX0v1BNtGLQnIbJZQEYB1+ZyN/+Sv6
 AOzCXg3444yQUawBroveWmLigcIwT8HFrDGW5Qpmm5Pjj0b4HpKEOY5o6lZW/o2Y57Lp
 S8DMdgOtRgUcE3VUkAAPWS8GAVclGvqlUDdwWcEI8dtIZKico5WeDD6Wl1YPb6Rpwgvk
 K6gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WkCxDUgwvSWTa4TybLGjrpb0Qy5LQw5TzCVXxoCsbgI=;
 b=PHGO7Sm0hm6CJiMBWJddQbWbdV+qSBdf2atIxiDJ2F+4uwDK4GvzAvgXCxoLab+dCL
 vVrTX2tfI8KZB1SDl/CMzX8TY4YCdH0YwL4jbQzRGIOcVK4ZkoNywiUX8LGLNQV2KnRW
 pTi9SD/c31MOW6BiVzVoHQ0/Y3geulAO9mfcv3SpA3hHFRBCe4lxeFGCJqaObDdsH2Me
 IViLFdCYzSOAAf6nDJHh1NdDqoIS1cUZOIluy/Wvhy4W+6PLaxiepC023HLcuArim9kc
 +LfqyrIc71nggFcxEDDevxPZuyN4B1c90Se0ue1mcyfz/mbrLk6fVQn8KwBJwDJ/VV9e
 l0AQ==
X-Gm-Message-State: AOAM530uVC6cAwP7MW+x2FGrN7gGEQ0T8Q+yl1YLj2sIfDfYW1GQ3xKF
 N8sOr85T3jSzeoJL7C+EQN0VLoxPlGvGDRnqYzk6T9of
X-Google-Smtp-Source: ABdhPJwvMBBzkWRGEDjWz8+WCNmkn5ZbmqN6i/weL35Tks/SKtj2RLDizb5tRJD11yRbJrCgsICWNGpdXeWVJyczeao=
X-Received: by 2002:aa7:d304:: with SMTP id p4mr15139634edq.151.1630957500638; 
 Mon, 06 Sep 2021 12:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210906034356.2946530-1-airlied@gmail.com>
 <20210906034356.2946530-2-airlied@gmail.com>
 <87mtoq86ct.fsf@intel.com>
In-Reply-To: <87mtoq86ct.fsf@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 7 Sep 2021 05:44:49 +1000
Message-ID: <CAPM=9ty4y9new=adp+cmKCP0fuGrMgJOCWGSV-nmzorN3nACKw@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: move display funcs into a
 display struct.
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

On Mon, 6 Sept 2021 at 18:18, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Mon, 06 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> > From: Dave Airlie <airlied@redhat.com>
> >
> > This is the first step in an idea to refactor the display code
> > into a bit more of a corner.
>
> So, do we want to make i915->display a pointer?
>
> If we do, and we're about to touch every place accessing the display
> struct, we might just as well have:
>
> struct drm_i915_private {
>         struct drm_i915_display _display;
>         struct drm_i915_display *display;
> };
>
> and initialize i915->display = &i915->_display, and make all access
> happen via the pointer. If we want to allocate it dynamically at some
> point, it'll be a *much* easier task.
>
> But the first question to figure out is whether we want to do that or
> not.

I think the advantage is that we can hide a lot more structs from the
main struct,
the disadvantage is additional pointer chasing, esp for the drm_device and other
i915_priv members.

Has anyone any non-anecdotal knowledge of how bad the latter problem
actually is?
Other drivers seem to do a lot of it and nobody has complained about it.

I'm happy to move to a pointer for it all to be honest,
Dave.
