Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E5885C483
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 20:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D043B10E523;
	Tue, 20 Feb 2024 19:20:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="RnZU0vXf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com
 [209.85.219.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9AD510E52A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 19:20:18 +0000 (UTC)
Received: by mail-yb1-f182.google.com with SMTP id
 3f1490d57ef6-dccb1421bdeso5531893276.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 11:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1708456818; x=1709061618; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=tJPwApU9XXgv92RddfdwNnrkCzlQ97sHtpLb8FJGPyE=;
 b=RnZU0vXftExHUkI2Ki0lbc7FaXQzfD3feKMwS1DFMEHRKCrF2FcN5qVKUdIL/2thyJ
 6mVVv/ODxAITVXRKc5684hU4rNK2rcZiBU56RPgfPFIsw6CgpeGeNOe99NsfrT6Fww5H
 Ww3hVH0zG2z2WoljUU8UjC9h72QpiZ2teA6Jwfe/5jdwt1kadFXQABpigV8VleksqLGA
 FC5HlxvSkgST9cIOYY9grNn4dAHBnzffcLbKNP8lpH/XEp3iLfaMaLePwGpwYSTw7fKl
 DBsEXnvT1HfKt4p2mIEneciw2Pbn1zD7w1NNs2riycQ//3INoL/1N7R5jOR84xE8LYAN
 KWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708456818; x=1709061618;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tJPwApU9XXgv92RddfdwNnrkCzlQ97sHtpLb8FJGPyE=;
 b=vRg1zfjFjoULYvdM7l8aId0uLH2a1H87SrutEt1s6DFlQkozVHshSj/7ZDXU8RI1sA
 UjUWCuvBFCIql4Plnqql389LqEKN7thJK90uU/X4bvsIkiCgBdwlm7B3eq6QHJsZjsBe
 amak1mgjYg9dDplGlXh9pydrqB0lspi1w82YEyYruk69Ls5XRCCfpj9Zkoup3prLcCuq
 VuppBY3Aa6gjEnqdM2UZrfhoL1j287cltRinM77v17AAsh9d7jI9MJ9BpTF3W+nH64Me
 /OxTTcZUszJpaHb16r0z5RH/yCMbk3LcWVVcrnA+r9LHJAQeXLxpE0yvHxmJZfRtMNNs
 gHRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXxzbXBE7puhBh5g1VQopIT0sgoUr+sgQfQ0G8qdhqJO5XV8jkdME2A9FJlG/weR8HPdUxtZateEJoP0ceW7blodiKnpjhCXOT8wDJaykCm
X-Gm-Message-State: AOJu0Yyselsl26/KAfYtMxFbj2WnE7HERZCzS5lEDPuvPcolS0LKKz5U
 sDVCBsJhyJdJdd5f2BfZFRJNqHYkSUSHNVNwvlKwOlfsRzItPyAsRbZ3w840p/qQPwMkc6gbM33
 Wz1wsAulvD1Ks8gk6D7u8FN01mt2Nc5qseQ0Bxg==
X-Google-Smtp-Source: AGHT+IEX8MB1nSQa5VpR8vJoxH2b5PfHyVyzVIBSZF2rtV4Pc7Ci0BkpAzatQu7sQcW34YdMBldvJ8Fd82tHXTI79J4=
X-Received: by 2002:a25:aacb:0:b0:dcc:9e88:b15 with SMTP id
 t69-20020a25aacb000000b00dcc9e880b15mr14917577ybi.41.1708456817505; Tue, 20
 Feb 2024 11:20:17 -0800 (PST)
MIME-Version: 1.0
References: <20240215190834.3222812-1-quic_abhinavk@quicinc.com>
 <CAA8EJppQquHgSgCrxKZHPHk248Pxg7Q8mvmmjbcpUxpreQkcuA@mail.gmail.com>
 <d3674c10-5c29-d917-44f5-758d90d9e679@quicinc.com>
 <CAA8EJpqaG+fBA_FO-L7Bimtjqqg3ZDQtyJL0oPFEueb-1WxjUw@mail.gmail.com>
In-Reply-To: <CAA8EJpqaG+fBA_FO-L7Bimtjqqg3ZDQtyJL0oPFEueb-1WxjUw@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 21:20:06 +0200
Message-ID: <CAA8EJpoeb63QRddxawm2J0s8O0XrLQBrDuYXOB=ZtzDG7mu2PQ@mail.gmail.com>
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

On Tue, 20 Feb 2024 at 21:05, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, 20 Feb 2024 at 20:53, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
> >
> >
> >
> > On 2/20/2024 10:49 AM, Dmitry Baryshkov wrote:
> > > On Thu, 15 Feb 2024 at 21:08, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
> > >>
> > >> intel_dp_vsc_sdp_pack() can be re-used by other DRM drivers as well.
> > >> Lets move this to drm_dp_helper to achieve this.
> > >>
> > >> changes in v2:
> > >>          - rebased on top of drm-tip
> > >>
> > >> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > >
> > > v1 had an explicit comment before the ack:
> > >
> >
> > Yes, I remember the comment. I did not make any changes to v2 other than
> > just rebasing it on drm-tip to get the ack from i915 folks.
> >
> > >>     From my side, with the promise of the size fixup.
> > >
> > > However I observe neither a second patch removing the size argument
> > > nor it being dropped as a part of this patch.
> > >
> >
> > Yes, now that in v2 we got the ack for this patch, I can spin a v3 with
> > the addition of the next patch to remove the size OR as another series
> > so as to not block the main series which needs this patch.
> >
> > I would prefer the latter.
>
> It doesn't work this way. The comment should have been fixed for v2.

This probably deserves some explanation. Currently there is only one
user of this function. So it is easy to fix it. Once there are several
users, you have to fix all of them at the same time, patching
different drm subtrees. That complicates the life of maintainers.

-- 
With best wishes
Dmitry
