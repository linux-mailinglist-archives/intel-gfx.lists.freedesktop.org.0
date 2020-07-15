Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69613220EAF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 16:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F456EB6F;
	Wed, 15 Jul 2020 14:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510736EB6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 14:05:53 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id h13so1550095otr.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 07:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DAYoqkDRQAeimHaUrZmBQDu7Jf6R2HY8pFOK/1qjsZs=;
 b=ExB08Ndx/lwe9KJ+y1k309GKK7sF/MF0efPoCdBiTbDymxtxRRaQbxExAxojod4PBh
 EA1jZVNhexWK494JzUkP235H3ZZ5wBejzUF/Jy/yFYghfhFMwmYmwvsuLl9R7AaNP410
 iz0R6ZFCV4dD0kZ+Y9WGWd0YNYbbAl2sWiI0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DAYoqkDRQAeimHaUrZmBQDu7Jf6R2HY8pFOK/1qjsZs=;
 b=I5wr3m1lRRoyJ//36ZPWKZxAdvSAVfDcINL83eEe7CyJ/3bO3OJ9W49a9lsJjvda1D
 aX6rSWZ38LvvWHCdKYeOYwlf0jgOyW0CMEV6SBXn2Uc6mFPBsyNzOWeZ9Kjc3XvjX39C
 4ZEj6/Bip8Tkk7+sLV9mi8AnW+rO6BqC0TSJkkU5Hiq7JKpiMhM99byZJLaZGOpxpeX4
 +o/tPCWLiLYW0bBJGqLosEI4agfDTHDHuYcMhTN06A57Wjfc9v12SW1r/B/rWNzYgNyF
 nsA4emv2fM9Vw+8Nggz9W/hqGrP1cEPzC2w936OoY01Y49KOS2egpDPItSjmAoKwMM2k
 qgTQ==
X-Gm-Message-State: AOAM532H1eB5aNHW4TwlXQnZA8hUG6EORq6o3CFJntGgaSHkwQXVX78z
 9ghXjB8MtDLBN58olBe1LNB253GxA4u/vb9AaI8A3g==
X-Google-Smtp-Source: ABdhPJyaiNWDvfSd56kH8sua2TotZr//W7ffRo893laPrqhjhye1a7sziKFxpauaVvOzh9CFNxodbysgjearB3i2d5U=
X-Received: by 2002:a9d:d55:: with SMTP id 79mr9444012oti.281.1594821952517;
 Wed, 15 Jul 2020 07:05:52 -0700 (PDT)
MIME-Version: 1.0
References: <87a70029vz.fsf@intel.com> <875zao2989.fsf@intel.com>
In-Reply-To: <875zao2989.fsf@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 15 Jul 2020 16:05:41 +0200
Message-ID: <CAKMK7uGbLrp+sreKNV0FUdG_o7NRvRf=B-rN3zM91174diceJA@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>, Lyude <lyude@redhat.com>
Subject: Re: [Intel-gfx] [PULL] drm-intel-next
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
Cc: "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 15, 2020 at 3:34 PM Jani Nikula <jani.nikula@intel.com> wrote:
>
>
> Argh, failed to mention:
>
> On Wed, 15 Jul 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> > Lee Shawn C (1):
> >       drm/i915/mst: filter out the display mode exceed sink's capability
>
> The above depends on:
>
> > Lyude Paul (1):
> >       drm/probe_helper: Add drm_connector_helper_funcs.mode_valid_ctx
>
> Which has changes outside of i915:
>
> >  drivers/gpu/drm/drm_crtc_helper_internal.h         |   7 +-
> >  drivers/gpu/drm/drm_probe_helper.c                 |  97 +--
>
> and does not have an explicit ack recorded, though drm-misc maintainers
> have been Cc'd. :(
>
> I decided they were benign enough, but needed to be mentioned.

Yeah looks all fine, adding Lyude just as fyi.
-Daniel

>
> BR,
> Jani.
>
>
> --
> Jani Nikula, Intel Open Source Graphics Center



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
