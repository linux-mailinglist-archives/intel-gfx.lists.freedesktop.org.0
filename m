Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF0185C443
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 20:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB00710E514;
	Tue, 20 Feb 2024 19:06:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Y62WqU0I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
 [209.85.128.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F3210E515
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 19:06:08 +0000 (UTC)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-6083cabc2f9so23672407b3.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 11:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1708455968; x=1709060768; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FqbWBojOxNxmodBmyheWK78bpyU1XZWA8MIuZ3ABrLU=;
 b=Y62WqU0I7khakIH1inSUn81IdOm7fjBvVh5xUt27FB5SEUdeCxyHx9krgODallIcHe
 aoF7zF4wDNj93mMyH9pYWgkH8DmLxC9PgpVnupOFYzX+xfIfkQY2Em41aJOaVimExhKC
 hUR+r8JVy9LSkN143Y9HcISfVh9mUy7az9XOTP0AOkQQsObw90JAJVGNsg/HAUG8v3DN
 TvoZLVscaj5qTXPN7KCFWuIwrOYSrC840FFglHSdP8GFiYVi+qLB7jRxm9TCDnPYiyc1
 KyZyWaaFDNj5uUFLVwKkxuyHaPAQxj2Hp5/zzF8+tIs11wew6Gwv8toLf+fRwnRVYGRw
 O5jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708455968; x=1709060768;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FqbWBojOxNxmodBmyheWK78bpyU1XZWA8MIuZ3ABrLU=;
 b=LgN4j94+LT5J3O2RHQA2PVontXuqJGpu89ESIdXdeBA2qpNAPPy10KrJLEofZ31j0C
 FH9nf5BiAFpZTt8CctD/A3JuOiG2V8sYYLDCPaoIYnc+6e9cdqH9PDUlZYP81zQNkaTq
 p/32QzDkcGqr9vWXltWClODjBSNrJiHI1kfgb7dpfj5FO6YvFjs+6aTiKqjspnhLuWsb
 V7reBF2LTrC5vl0ldcEVdfGQWPHY0D4hGhTz6KBGJG9R3dKmp04j+kPE8wEV9hclZRS1
 +K46j5CJCEL1tex7wNPOivh9aQ4jA+WYsejqo4+LnA4F3q6Dshdza4OM8jX/mn2QE19h
 bpBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdpcZzF78bosFDB+vuZzN4N1q7daFR7HktsSNdqcJFvyZJnIQJqUZI3+FY4g1dCCnbeywkM0MIKDBkdz8dfK7BlPknQRZfEuqp6zUmmFVZ
X-Gm-Message-State: AOJu0YyeUUb5H8xnSgkCYrFx6bb6RPAIKGaYIHZesd4B86OVC1vq0ByD
 gmHGLzhm03U8Bsh6T2VjQLMYNvGCdav5qNvnqjCzm52eYVLxttmHYkRl5FTkfeRB+6d72qwXCrB
 DIfLy7hEI6Ul6zZZvXKfiioizNjaTJ5+wjac2LA==
X-Google-Smtp-Source: AGHT+IGCO1F9zun/vDWXopm6gAPN6SOyj4ssXPYwfBGVfMSRD3cjVgDDI2QGkBvOlcrbG3wB8s9mVzvLx/l2sr/cQqM=
X-Received: by 2002:a81:7184:0:b0:604:230a:a823 with SMTP id
 m126-20020a817184000000b00604230aa823mr15975734ywc.50.1708455967733; Tue, 20
 Feb 2024 11:06:07 -0800 (PST)
MIME-Version: 1.0
References: <20240215190834.3222812-1-quic_abhinavk@quicinc.com>
 <CAA8EJppQquHgSgCrxKZHPHk248Pxg7Q8mvmmjbcpUxpreQkcuA@mail.gmail.com>
 <d3674c10-5c29-d917-44f5-758d90d9e679@quicinc.com>
In-Reply-To: <d3674c10-5c29-d917-44f5-758d90d9e679@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 21:05:56 +0200
Message-ID: <CAA8EJpqaG+fBA_FO-L7Bimtjqqg3ZDQtyJL0oPFEueb-1WxjUw@mail.gmail.com>
Subject: Re: [PATCH v2] drm/dp: move intel_dp_vsc_sdp_pack() to generic helper
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, robdclark@gmail.com, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com, quic_jesszhan@quicinc.com, 
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 20 Feb 2024 at 20:53, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
>
>
> On 2/20/2024 10:49 AM, Dmitry Baryshkov wrote:
> > On Thu, 15 Feb 2024 at 21:08, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
> >>
> >> intel_dp_vsc_sdp_pack() can be re-used by other DRM drivers as well.
> >> Lets move this to drm_dp_helper to achieve this.
> >>
> >> changes in v2:
> >>          - rebased on top of drm-tip
> >>
> >> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > v1 had an explicit comment before the ack:
> >
>
> Yes, I remember the comment. I did not make any changes to v2 other than
> just rebasing it on drm-tip to get the ack from i915 folks.
>
> >>     From my side, with the promise of the size fixup.
> >
> > However I observe neither a second patch removing the size argument
> > nor it being dropped as a part of this patch.
> >
>
> Yes, now that in v2 we got the ack for this patch, I can spin a v3 with
> the addition of the next patch to remove the size OR as another series
> so as to not block the main series which needs this patch.
>
> I would prefer the latter.

It doesn't work this way. The comment should have been fixed for v2.



-- 
With best wishes
Dmitry
