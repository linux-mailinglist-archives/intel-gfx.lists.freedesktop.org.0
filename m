Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A801665FC
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 19:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C6D6EE2E;
	Thu, 20 Feb 2020 18:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D0C6EE2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 18:14:45 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id s10so3046092wmh.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 10:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=gznl4640Pmjty68zKptsYkWkjNeUmDBlZFmAL3gSFPE=;
 b=YbsgFHprAZngpJ64emSEHbG/VsiZpyqbsgRuOHCXapQk3shJhhfNfjXpx0xrWdI1qt
 TInKZ6bAFGf/E6AENPaHYpSbVNWGhcsIFaUvfjpGJcABfkb49W5N+AxmkDR6BWI21DFn
 avUc4a4TTWJunNOed0cmyQwM+/q6KqPcoNFwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=gznl4640Pmjty68zKptsYkWkjNeUmDBlZFmAL3gSFPE=;
 b=Stbb5iVbMowtLb15B7Je32Q+oqkJHx9gPe6H1gL1/s77ZCVPuKmj0uDvvRQIgd9kuX
 SAQMxd2nESoN6UkJ+A+JZ3ypj13ersPG6EvRlE81cntAhTikTn5fM2TvwZhdGNyNMyXB
 o+XsDIs6Ft6dZwMsPLzYE16APVEM2oZlozvwSflyLFMgo1M0zpB8QAijalv1mm9g/qm8
 UFJnQGlh2ZBXQkunNPnp38JGm4BZWHO7xJ7WqowSQzIXQaHq+C24QnCKhjBUTNNQ5CKI
 Ghv1qZZKZq5VBquJuEeeeLVg1yez42cr9rgMMSqaEd1F/E6bRLJEx/5Ai3PT7ZUu28hc
 GClA==
X-Gm-Message-State: APjAAAUwjaxQFaztPHhu4JkdYCkwvjWhJLPfJ6LZRqyZuT5Zw+vy1rKz
 pY+x7lNyRwjodZDLqXnrVWdhjg==
X-Google-Smtp-Source: APXvYqzTWpnmL8Z8rp8OENnYGEbj5HolTszXBtFYgJQK5//Eu/POgaU/ZY2vHhLmewsS8dUgPRJZkA==
X-Received: by 2002:a1c:990b:: with SMTP id b11mr5769459wme.15.1582222484712; 
 Thu, 20 Feb 2020 10:14:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c141sm98136wme.41.2020.02.20.10.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 10:14:44 -0800 (PST)
Date: Thu, 20 Feb 2020 19:14:42 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200220181442.GV2363188@phenom.ffwll.local>
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
 <20200219203544.31013-6-ville.syrjala@linux.intel.com>
 <CACvgo50oWkF8vjpGmOYSwaK+khZuAE0yW_npf2UEMQoRTokLBA@mail.gmail.com>
 <20200220153309.GB13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220153309.GB13686@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/msm/dpu: Stop copying around
 mode->private_flags
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
Cc: freedreno@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 20, 2020 at 05:33:09PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Feb 20, 2020 at 11:24:20AM +0000, Emil Velikov wrote:
> > On Wed, 19 Feb 2020 at 20:36, Ville Syrjala
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > The driver never sets mode->private_flags so copying
> > > it back and forth is entirely pointless. Stop doing it.
> > >
> > > Also drop private_flags from the tracepoint.
> > >
> > > Cc: Rob Clark <robdclark@gmail.com>
> > > Cc: Sean Paul <sean@poorly.run>
> > > Cc: linux-arm-msm@vger.kernel.org
> > > Cc: freedreno@lists.freedesktop.org
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Perhaps the msm team has a WIP which makes use of it ?
> =

> Maybe if it's one of them five year projects. But anyways, =

> with an atomic driver there are certainly better ways to
> handle this.

Yeah with atomic you have your display mode in drm_crtc_state, which
you're subposed to subclass so that you can have terabytes of private
state. At least in theory :-)

->private_flags was really only useful in pre-atomic drivers.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
